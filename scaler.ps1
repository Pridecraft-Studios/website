#!/bin/env pwsh

$ScalerScriptName = $MyInvocation.MyCommand.Name

class Program {
	[string]$binary;
	[string]$program;
	[string]$link;
	[string]$message = "If you need to build from source, see:";
}

function failproc([Program]$program) {
	fail $program.program $program.link $program.message
}

function fail([string]$program, [string]$link, [string]$message) {
	Write-Warning "Please install ``$program``. $message $link"
	Write-Warning "If you already have, put the path to the binary's folder in your ```$env:PATH`` variable."
	Write-Warning ""
	Write-Warning "Example: ```$env:PATH = `"/path/to/bin$( [IO.Path]::PathSeparator )`$env:PATH`"``"
	Write-Warning ""
	Write-Warning "If you're calling from a POSIX shell, you can stack on the ``$program`` environment."
	Write-Warning ""
	Write-Warning "Example: ``$program=/path/to/bin pwsh $ScalerScriptName``"

	if ( (Read-Host "Would you like to open ``$link``?").StartsWith('y')) {
		Start-Process "$link"
	}
	exit 1
}

function waitForJobs() {
	Get-Job | Foreach-Object {
		Write-Output "`n=== $( $_.command ) ===`n";
		Wait-Job $_ > $null;
		Receive-Job $_;
		Remove-Job $_;
	}
	Write-Output "`n=== End of Task List ===`n"
}

(Get-Item -Path @("env:ffmpeg", "env:jpegli", "env:webp", "env:libavif") 2> $null).Value |
		ForEach-Object { $env:PATH = "$_$( [IO.Path]::PathSeparator )$env:PATH" }

@(
[Program]@{ binary = "ffmpeg"; program = "ffmpeg"; link = "https://ffmpeg.org/"; message = "If you need to download FFmpeg, see:" },
[Program]@{ binary = "cjpegli"; program = "jpegli"; link = "https://github.com/google/jpegli" },
[Program]@{ binary = "cwebp"; program = "webp"; link = "https://developers.google.com/speed/webp/docs/precompiled"; message = "If you need to download WebP, see:" },
[Program]@{ binary = "avifenc"; program = "avif"; link = "https://github.com/AOMediaCodec/libavif" }
) | ForEach-Object { if (!(Get-Command $_.binary 2> $null)) {
	failproc $_
} }

# Arguments:
$argType = @{
	sizes = "sizes";
	s = "sizes";

	alpha = "alpha";

	background = "background";
	bg = "background";

	jpeg = "jpeg";
	webp = "webp";
	avif = "avif";
	j = "jpeg";
	w = "webp";
	a = "avif";

	terminate = "terminate";
}
$argShot = @{
	force = "force";
	move = "move";
	f = "force";
	m = "move";
}
$argRem = @();
$argMap = @{
	# 720p and 1440p was deemed unlikely to be hit often to be worth supporting.
	# sizes = "360,720,1080,1440,2160";
	sizes = "360,1080,2160";

	# Defaults to an off gray as spec'd by WorldWidePixel.
	# This is effectively no-op unless alpha is set to `crush` or `merge`.
	background = "color=c=#23232f"

	# Previews should ideally have a high quality output, but realistically,
	# it's not going to be seen in full screen in isolation.
	jpeg = "d=2,yuv=444";
	avif = "s=0,q=60,yuv=444,ignoreExif,ignoreXmp";
	# webp = "preset=photo,m=6,z=9,q=90,noalpha";
	# jxl = "brotliEffort=11,e=10"
};

for($i = 0; $i -lt $args.length; $i++) {
	$arg = $args[$i];
	if (!$arg.startsWith('-')) {
		$argRem += $arg;
		continue;
	}

	if ($arg -eq '--') {
		$argRem += $args[++$i..$args.length];
		break;
	}

	$arg = $arg.substring(1);

	if ($null -ne $argShot[$arg]) {
		$argMap[$argShot[$arg]] = 1;
		continue;
	}

	if ($null -eq $argType[$arg]) {
		throw [Exception]::new("Unknown argument: $arg");
	}

	$arg = $argType[$arg];

	$currentArg = $args[++$i];

	if ($currentArg -eq '-') {
		$argMap.remove($arg);
	} else {
		$argMap[$arg] = $currentArg;
	}
}

$sizes = $argMap['sizes'].split(',')
$ffmpegArgs = @();
$map = 0;

$argRem = $argRem | % { $_.startsWith('file://') ? $_.substring(7) : $_ }

$filterGenerator = { "scale=-1:$($args[0])" }

switch ($argMap["alpha"]) {
	"crush" {
		$filterGenerator = {
			"split[a][b];" +
			"$($argMap["background"])[c];" +
			"[c][a]scale=rw:rh[d];" + # Scales background to match input
			"[b][d]alphamerge[e];" + # Crushes alpha channel by merging background
			"[e]scale=-1:$($args[0])" # Scales the final result
		}
	}
	"merge" {
		$filterGenerator = {
			"split[a][b];" +
			"$($argMap["background"])[c];" +
			"[c][a]scale=rw:rh[d];" + # Scales background to match input
			"[d][b]overlay[e];" + # Merges background on top of input
			"[e]scale=-1:$($args[0])[f];" +
			# Now for some unknown reasons, ffmpeg when downscaling makes stuff slightly translucent.
			# Who knows why:tm: The rest of the filter pipeline is to fix that.
			"[f]split[g][h];" +
			"color=c=white[i];" + # Pure white = 100% opacity; opaque
			"[i][g]scale=rw:rh[j];" +
			"[h][j]alphamerge" # Crushes the alpha channel.
		}
	}
}

foreach ($arg in $argRem) {
	$paths = $arg.split([IO.Path]::PathSeparator);
	$image = $paths[0];

	if (!(Get-Item $image 2> $null)) {
		Write-Warning "Unknown file: $image";
		continue;
	}
	$output = $null -ne $paths[1] ? $paths[1] : [IO.Path]::GetFileNameWithoutExtension($image);

	if (!($argMap["force"]) -and !($sizes | % { !(Get-Item "$output-${_}p.png") 2> $null } | ? { $_ -eq $true })) {
		Write-Warning "Skipping $output for $image";
		continue;
	}

	$ffmpegArgs += @("-i"; $image);
	$outputMap = $map++;
	foreach ($size in $sizes) {
		if (!($argMap["force"]) -and (Get-Item "$output-${size}p.png" 2> $null)) {
			Write-Warning "Skipping $output-${size}p.png for $image";
			continue;
		}
		$ffmpegArgs += @(
			"-map"; [string]($outputMap);
			"-frames:v"; "1";
			"-update"; "1";
			"-vf"; (& $filterGenerator $size);
			"-sws_flags"; "lanczos";
			"$output-${size}p.png"
		);
	}
}

if($ffmpegArgs) {
	if($argMap["force"]) {
		$ffmpegArgs += "-y"
	}
	Write-Warning "ffmpeg $ffmpegArgs"
	ffmpeg $ffmpegArgs
}

if($argMap["terminate"]) {
	exit 1
}

if (Get-Command "oxipng" 2> $null) {
	[Array]$params = $argRem |
			% {
				$_ = $_.split([IO.Path]::PathSeparator);
				$null -ne $_[1] ? $_[1] : [IO.Path]::GetFileNameWithoutExtension($_[0]);
			} |
			% { $o=$_; $sizes | % {"$o-${_}p.png" } }
	oxipng -o max -a -s $params &
}

$jpegliArgMap = @{
	yuv = "--chroma_subsampling=";
	xyb = "--xyb";
	d = "-d";
	q = "-q";
	distance = "-d";
	quality = "-q";
}

$webpArgMap = @{
	preset = "-preset";
	m = "-m";
	z = "-z";
	q = "-q";
	quality = "-q";
	near_lossess = "-near_lossless";
	lossless = "-lossless";
	noalpha = "-noalpha";
}

$jpegxlArgMap = @{
	brotliEffort = "--brotli_effort=";
	d = "-d";
	q = "-q";
	e = "-e";
	distance = "-d";
	quality = "-q";
	effort = "-e";
}

$avifArgMap = @{
	y = "-y";
	s = "-s";
	q = "-q";
	yuv = "-y";
	speed = "-s";
	quality = "-q";
	ignoreExif = "--ignore-exif";
	ignoreXmp = "--ignore-xmp";
}

function toArgs([String]$argInput, [HashTable]$argMap) {
	$output = @();
	foreach ($argRaw in $argInput.split(',')) {
		$arg = $argRaw.split('=');
		$zeroth = $arg[0]
		$k = $argMap[$zeroth]

		if ($null -eq $k) {
			Write-Error "Unknown argument $argRaw";
			continue;
		}

		if ( $k.endsWith('=')) {
			$output += "$k$( $arg[1] )";
		} else {
			$output += @($k; $arg[1]);
		}
	}
	return $output;
}

$runners = @();

foreach ($item in $argMap.getEnumerator()) {
	switch ($item.key) {
		"jpeg" {
			$jpegArgs = $( toArgs $item.value $jpegliArgMap );
			$runners += { cjpegli $args[0] "$( $args[1] )-$( $args[2] )p.jpeg" $jpegArgs & }
		}
		"jxl" {
			$jxlArgs = $( toArgs $item.value $jpegxlArgMap );
			$runners += { cjxl $args[0] "$( $args[1] )-$( $args[2] )p.jxl" $jxlArgs & }
		}
		"webp" {
			$webpArgs = $( toArgs $item.value $webpArgMap );
			$runners += { cwebp $webpArgs $args[0] -o "$( $args[1] )-$( $args[2] )p.webp" & }
		}
		"avif" {
			$avifArgs = $( toArgs $item.value $avifArgMap );
			$runners += { avifenc $avifArgs $( $args[0] ) "$( $args[1] )-$( $args[2] )p.avif" & }
		}
	}
}

foreach ($arg in $argRem) {
	$paths = $arg.split([IO.Path]::PathSeparator);
	$image = $paths[0];
	$output = $null -ne $paths[1] ? $paths[1] : [IO.Path]::GetFileNameWithoutExtension($image)
	if (!(Get-Item $image 2> $null)) {
		Write-Warning "Unknown file $image (derived from $arg)"
		continue;
	}
	foreach ($size in $sizes) {
		$sizedOutput = "$output-${size}p.png";
		if (!(Get-Item $sizedOutput 2> $null)) {
			Write-Warning "Unknown file $sizedOutput (derived from $arg)"
			continue;
		}
		foreach ($runner in $runners) {
			& $runner $sizedOutput $output $size
		}
	}
}

waitForJobs

if($argMap['move']) {
	$params = $argRem | % {
		$_ = $_.split([IO.Path]::PathSeparator);
		if($_[1]) {
			$output = "$($_[1])$([IO.Path]::GetExtension($_[0]))";
			Move-Item -Path $_[0] -Destination $output;
			Write-Output $output;
		} else {
			Write-Output $_[0];
		}
	}
	oxipng -o max -a -s $params
}
