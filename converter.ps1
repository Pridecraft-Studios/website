#!/bin/env pwsh

# Arguments:
$name = $args[0]
$out = $args[1]

# With some experimentation:
#
# Biis: Avif 60+YUV420 GIMP, JXL 70, WebP 80 (may not be optimal)
# Biis Pollinating Alliums: Avif 60+YUV420, JXL 70, WebP 90
# Biis Pollinating Azaleas: Avif 60+YUV444, JXL 70, WebP 90
# Bii Jungle: Avif 50+YUV444, JXL 60, WebP 70+SharpYUV
# Trans Allium: Avif 50+YUV444, JXL 60, WebP 70+SharpYUV
# Old Paintings: Avif 40+YUV444, JXL 60, WebP 60
# Pride Flag Paintings: Avif 50+YUV444, JXL 50, WebP 80+SharpYUV
#
# Recommended settings for a complex Minecraft scene with shaders:
#  - Avif 50+YUV444 (slightly better & worse than AVIF 60+YUV420p but greater space-savings)
#  - JXL -d 3 (~-q 70)
#  - WebP 70+SharpYUV (better than WebP 80 it seems)
#
# Simpler images can also do:
#  - Avif 40+YUV444
#  - JXL -q 60
#  - WebP 60. SharpYUV can sometimes degrade images more.
#
# Recommended to avoid:
#  - Heavy visual degradation
#    - If it is worse than WebP 80, reconsider.
#  - Any unexpected smoothing of lines
#  - Any unexpected blurring between strong colours (i.e. reddish-pink & black)
#  - Any strong colour blending that shouldn't exist
#  - Any muteness in colour.
#    - The SharpYUV variant of WebP maybe of interest for baseline.
#  - Using GIMP's AVIF encoder, as it is notably worse without much size gain.

oxipng -o max -a -s $name

# These options realistically won't be used in practice:
# cwebp -preset photo -m 6 -z 9 -near_lossless 10 $name -o ${out}-nl.webp &
# cwebp -preset photo -m 6 -z 9 -lossless -q 100 $name -o ${out}-l.webp &
# cwebp -preset photo -m 6 -z 9 -q 95 -noalpha $name -o ${out}-95.webp &

cwebp -preset photo -m 6 -z 9 -q 80 -noalpha $name -o ${out}-80.webp &
cwebp -preset photo -m 6 -z 9 -q 70 -noalpha $name -o ${out}-70.webp &
cwebp -preset photo -m 6 -z 9 -q 60 -noalpha $name -o ${out}-60.webp &

cwebp -preset photo -m 6 -z 9 -q 80 -sharp_yuv -noalpha $name -o ${out}-80-sharpYUV.webp &
cwebp -preset photo -m 6 -z 9 -q 70 -sharp_yuv -noalpha $name -o ${out}-70-sharpYUV.webp &
cwebp -preset photo -m 6 -z 9 -q 60 -sharp_yuv -noalpha $name -o ${out}-60-sharpYUV.webp &

# There's apparently a formatter that doesn't understand arguments.
# The quotes are to try to prevent it from mangling the argument like it shouldn't.
#
# cjxl $name $out-l.jxl --brotli_effort=11 -q 100 -e 9 &
cjxl $name $out-d3.jxl "--brotli_effort=11" -d 3 -e 9 &
cjxl $name $out-q70.jxl "--brotli_effort=11" -q 70 -e 9 &
cjxl $name $out-q60.jxl "--brotli_effort=11" -q 60 -e 9 &
cjxl $name $out-q50.jxl "--brotli_effort=11" -q 50 -e 9 &

avifenc -s 0 -y 444 --ignore-exif --ignore-xmp -q 60 $name $out-60-YUV444.avif &
avifenc -s 0 -y 420 --ignore-exif --ignore-xmp -q 60 $name $out-60-YUV420.avif &
avifenc -s 0 -y 444 --ignore-exif --ignore-xmp -q 50 $name $out-50-YUV444.avif &

# Ensure that all the jobs are completed before exiting.
Get-Job | Wait-Job

# ls -lah $out*
