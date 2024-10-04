# Picture Quality Considerations

The subject should not be degraded to the point of being obscured in noise,
or overly smoothed out, removing the detail of the subject.

The background should not be degraded to the point of being distracting in the context of the subject.

Recommended to avoid:

- Heavy visual degradation. Drop the format if it cannot meet expected quality under 200K at 1080p.
- Any unexpected smoothing of lines
- Any unexpected blurring between strong colours (i.e. reddish-pink & black)
- Any strong colour blending that shouldn't exist
- Any muteness in colour.

## The encoders in use are:

- libwebp's `cwebp -preset photo -m 6 -z 9 input.png output.webp`
- libjxl's `cjxl input.png output.jxl "--brotli_effort=11" -e 9`
- libjxl/jpegli's `cjpegli input.png output.jpeg`
- libavif's `avifenc -s 0 --ignore-exif --ignore-xmp input.png output.avif`

All encoders are tuned to run at their slowest but highest quality possible for generic images
to ensure that they can consistently compress into small but usable files.

The pipeline in [scaler.ps1] is currently configured to:

- Emit AVIF at quality 70 with YUV 4:4:4. For most scenes, this generally does well.
- Emit JPEG at distance 1.5 with YUV 4:4:4. For nearly all scenes, this does well.
- Emit 360p, 720p and 1080p scales of input.
  - This allows for data saving and responsiveness as the client doesn't need to download as large of files.

With these quality considerations, for noisy shader-intensive images,
the recommended encoding settings are of the following:

- AVIF quality 60-80 with YUV 4:4:4. Highly scene dependent.
- JPEG using Jpegli on distance 2-1.5 with YUV 4:4:4. Hardly changes with scene complexity.
  - JPEG XL (a.k.a., JXL) should generally perform similary but with marginally smaller file sizes.
- WebP quality 90 using photo mode.
  - Important: WebP 90 may not always be within quality constraints and thus is disqualified.
  - Note: This is often larger than Jpegli.

For flat images, the recommended settings are of the following:

- AVIF quality 50-60 with YUV 4:4:4 or YUV 4:2:0.
- JPEG using Jpegli on distance 1.5-1 with YUV 4:4:4.
  - Note: This may be larger than WebP, and introduce more noise than favourable.
- WebP quality 90 using photo mode.
  - Being a video codec, this ends up excelling over JPEG.

### Encoders to avoid:

- `libjpeg-turbo`, `mozjpeg`
  - Offers subpar quality at a given size in comparison to `jpegli`.
- Non-AOM AVIF encoders, including the GNU Image Manipulation Program
  - Fails to return the same visual quality at a given size; may introduce artifacts.
- `cwebp` at quality <80
  - Always fails in retaining visual quality even in simple scenes.

## Encoded Quality Settings Picked

Current considerations are against the following formats: AVIF, JPEG via Jpegli, WebP

Historic formats include: JPEG XL marked as `JXL`

- `(ignored)` means that at the same visual quality, it was ignored for the smaller of the two formats.
- `-` means there was no visually suitable quality level for the size target.
- `q` prefix is `quality`, and is the implied default.
- `d` prefix is `distance`

### Pride Pack:

- Aquarium: Avif 80+YUV444, Jpegli d1.5+YUV444, WebP 90 (ignored)
- Bedroom: Avif 60+YUV444, Jpegli d2+YUV444, WebP -
- Bookshelves: Avif 80+YUV444, Jpegli d1.5+YUV444, WebP 90 (ignored)
  - Jpegli d2+YUV444 can beat out Avif 80 here.
    Avif 70+YUV444 may be 166K, but it oversmooths in comparison to Jpegli d2.
    Jpegli d2, however, starts to have noticeable jpeg artifacts at the sign.
- Foxes: Avif 70+YUV444, Jpegli d2+YUV444, WebP -
  - WebP notably blotches out; particularly on the right-most fox,
    where there's a random pink blotch near the snout.
- Gallery: Avif 70+YUV444, Jpegli d2+YUV444, WebP -
- Banner: Avif 60+YUV420, Jpegli d1.5+YUV444 (ignored), WebP 90

### Pride Bones:

- Banner: Avif 60+YUV444, Jpegli -, WebP -
  - Avif 60+YUV420 added noticeable fringing on highly contrasting edges.
  - Avif 80+YUV444 provides better shadow retention, although unnoticed at 100% scale.
  - WebP's Photo Mode and Drawing Mode failed to provide good visual quality at any quality setting.
  - JPEG, predictably, falls flat on its face; although the lines are sharp despite the added noise.
    - Introduced a fair amount of noise along edges.
    - Fails to preserve the sharpness of some lines, e.g., the bii.
    - Introduces noise 'reflections' on the allium's stem and the bii's left eye.

All published versions were taken at 16K resolution using Complementary Reimagined with Euphoria patches,
then scaled down and processed with Avif 70+YUV444 and Jpegli d1.5, as streamlined by [scaler.ps1].

Why 16K? Best possible chance for antialiasing with minimal artifacting at normal resolutions.

#### Unpublished revisions:

- Gallery: Avif 70+YUV444, Jpegli d2+YUV444, WebP 95 (ignored)
  - Jpegli introduces noise around the signs, but the degradation is acceptable at 100% scale.
  - WebP has noticeable colour degradation.
- Aquarium: Avif 70+YUV444, Jpegli d1.5+YUV444, WebP 95 (ignored)

# Historical

_This section is from 2023 within `converter.ps1`, which had a lower visual quality consideration._

With some experimentation:

Biis: Avif 60+YUV420 GIMP, JXL 70, WebP 80 (may not be optimal)
Biis Pollinating Alliums: Avif 60+YUV420, JXL 70, WebP 90
Biis Pollinating Azaleas: Avif 60+YUV444, JXL 70, WebP 90
Bii Jungle: Avif 50+YUV444, JXL 60, WebP 70+SharpYUV
Trans Allium: Avif 50+YUV444, JXL 60, WebP 70+SharpYUV
Old Paintings: Avif 40+YUV444, JXL 60, WebP 60
Pride Flag Paintings: Avif 50+YUV444, JXL 50, WebP 80+SharpYUV

Recommended settings for a complex Minecraft scene with shaders:

- Avif 50+YUV444 (slightly better & worse than AVIF 60+YUV420p but greater space-savings)
- JXL -d 3 (~-q 70)
- WebP 70+SharpYUV (better than WebP 80 it seems)

Simpler images can also do:

- Avif 40+YUV444
- JXL -q 60
- WebP 60. SharpYUV can sometimes degrade images more.

Recommended to avoid:

- Heavy visual degradation
  - If it is worse than WebP 80, reconsider.
- Any unexpected smoothing of lines
- Any unexpected blurring between strong colours (i.e. reddish-pink & black)
- Any strong colour blending that shouldn't exist
- Any muteness in colour.
  - The SharpYUV variant of WebP maybe of interest for baseline.
- Using GIMP's AVIF encoder, as it is notably worse without much size gain.

[scaler.ps1]: scaler.ps1
