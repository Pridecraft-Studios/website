#!/bin/env pwsh

# Arguments:
$name = $args[0]
$out = $args[1]

function waitForJobs() {
    Get-Job | Foreach-Object { echo "`n=== $($_.command) ===`n"; Wait-Job $_ > $null ; Receive-Job $_; }
}

$baseName = "$($name.substring(0, $name.lastIndexOf('.')))";
cwebp -lossless -q 100 $name -o "${baseName}.webp" &
# cjxl $name "${baseName}.jxl" --brotli_effort=11 -q 100 --allow_expert_options -e 11 &

oxipng -o max -a -s $name

if(!$out) {
    waitForJobs
    exit 0;
}

# These options realistically won't be used in practice:
# cwebp -preset photo -m 6 -z 9 -near_lossless 10 $name -o ${out}-nl.webp &
cwebp -preset photo -m 6 -z 9 -q 100 -noalpha $name -o ${out}-100.webp &
cwebp -preset photo -m 6 -z 9 -q 95 -noalpha $name -o ${out}-95.webp &
cwebp -preset photo -m 6 -z 9 -q 90 -noalpha $name -o ${out}-90.webp &
cwebp -preset photo -m 6 -z 9 -q 80 -noalpha $name -o ${out}-80.webp &
cwebp -preset photo -m 6 -z 9 -q 70 -noalpha $name -o ${out}-70.webp &

# There's apparently a formatter that doesn't understand arguments.
# The quotes are to try to prevent it from mangling the argument like it shouldn't.
# cjxl $name $out-d3.jxl "--brotli_effort=11" -d 3 -e 10 &
# cjxl $name $out-q70.jxl "--brotli_effort=11" -q 70 -e 10 &
# cjxl $name $out-q60.jxl "--brotli_effort=11" -q 60 -e 10 &
# cjxl $name $out-q50.jxl "--brotli_effort=11" -q 50 -e 10 &

cjpegli $name $out-d1-yuv444.jpeg -d 1 &
cjpegli $name $out-d1.5-yuv444.jpeg -d 1.5 &
cjpegli $name $out-d2-yuv444.jpeg -d 2 &
cjpegli $name $out-d3-yuv444.jpeg -d 3 &

avifenc -s 0 -y 444 --ignore-exif --ignore-xmp -q 90 $name $out-90-YUV444.avif &
avifenc -s 0 -y 444 --ignore-exif --ignore-xmp -q 80 $name $out-80-YUV444.avif &
avifenc -s 0 -y 444 --ignore-exif --ignore-xmp -q 70 $name $out-70-YUV444.avif &
avifenc -s 0 -y 444 --ignore-exif --ignore-xmp -q 60 $name $out-60-YUV444.avif &
avifenc -s 0 -y 420 --ignore-exif --ignore-xmp -q 60 $name $out-60-YUV420.avif &
avifenc -s 0 -y 444 --ignore-exif --ignore-xmp -q 50 $name $out-50-YUV444.avif &

# Ensure that all the jobs are completed before exiting.
waitForJobs

# ls -lah $out*
