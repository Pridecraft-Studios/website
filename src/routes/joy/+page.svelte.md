<!-- Copyright (c) 2023-2024 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
import Badge from '$lib/components/BadgeRaw.svelte';
import Badges from '$lib/components/Badges.svelte';
import Picture from '$lib/components/Picture.svelte';
import Developers from '$lib/components/Developers.svelte';
import DynPicture from '$lib/components/DynPicture.svelte';
import YouTube from '$lib/components/YouTube.svelte';

import { Modrinth, CurseForge, GitHubDownloads, GitHubCommits } from '$lib/shields';
import { Who, Socials, Donate, WwpMusic } from '$lib/boilerplate';

</script>

<!-- Cuties -->

# Joy

<aside class="shields">
<Modrinth modid="joy"/>
<CurseForge modid="joy" type="mc-mods" projectid="1230915"/>
<GitHubDownloads modid="joy" />
<GitHubCommits modid="joy" />
</aside>

This is Joy, a Content Mod made by [Pridecraft Studios], and a sister to [Pride Pack].
It comes with many LGBTQ+ Pride additions, including paintings, beds, mobs, candles and more!

There are also added variants as well, including trans bees, and backporting of pride bundles variants.

We also include Blahaj, including pride haj.

<Donate/>

## Gallery

<p class="gallery prioritize-2">

<YouTube id="ZyazvpZAmGU" title="Pridepack Trailer on YouTube." />

<Picture name="pridepack/banner" order="avif" original="avif"
	alt="The Pride Pack banner, featuring a rainbow bed, a bii, an aroace axolotl, a sleeping fox,
		chiseled bookshelves with rainbow-colored books, and a gay flag painting."
/>

<DynPicture dir="pridepack" name="bookshelves" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="Pride-themed chiseled bookshelves, candles and biis surrounding an enchanting table in a lush cave."
/>

<DynPicture dir="pridepack" name="aquarium" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="Trans, lesbian, progress and aroace themed axolotls in an aquarium,
		featuring pride, lesbian and asexual flag paintings to the left."
/>

<DynPicture dir="pridepack" name="gallery" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="A gallery featuring the pansexual, progress, rainbow and bisexual pride flags, along with an ally flag."
/>

<DynPicture dir="pridepack" name="foxes" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="Two foxes in front of a fire place,
		one of which is sleeping while the other is wearing pink &amp; white striped thigh-high socks."
/>

<DynPicture dir="pridepack" name="bedroom" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="A bedroom featuring pride-themed candles and bed, with a sniffer peeking in."
/>

</p>

<Who/>

## Where can I download Joy?

<ul class="badges">
<li><Badge id="modrinth" rel="me" link="https://modrinth.com/mod/joy" ext="svg" head="Available on" name="Modrinth"/></li>
<li><Badge id="curseforge" rel="me" link="https://www.curseforge.com/minecraft/mc-mods/joy" ext="svg" head="Available on" name="CurseForge"/></li>
<li><Badge id="github" rel="me" link="https://github.com/Pridecraft-Studios/joy" ext="svg" head="Available on" name="GitHub"/></li>
</ul>

<small>

Joy is split between multiple licenses depending on what part you're looking at.
Please read carefully; this affects how you will be able to use Joy's sources.

[The full information can be found here.][LICENSE]

<details><summary>Assets license [<b>CC BY-SA 4.0</b>]</summary>

<p>
<a property="dct:title" rel="cc:attributionURL" href="https://pridecraft.gay/pridepack">Joy's Assets</a> by
<a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://pridecraft.gay">Pridecraft Studios</a> is licensed under
<a href="https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-SA 4.0
<img width="16" height="16" style="height:16px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt="">
<img width="16" height="16" style="height:16px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt="">
<img width="16" height="16" style="height:16px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a>
</p>

This does _NOT_ include the music. See the [music license][MUSIC] for usage terms.

This also does _NOT_ include brand assets, including the rosettes in `icon.png`, and `*_rosette.png`.
These are All Rights Reserved.

</details>

<details><summary>Music license [<b>ARR + Permissions</b>]</summary>

<WwpMusic />

</details>

<details><summary>Blahaj [<b>Unlicense</b>] & Pride Blahaj [<b>MIT</b>] licensing</summary>

The core code was taken from [DaFuqs] and [hibiii] under the [Unlicense][BLAHAJ-BASE].

Pride Blahajs were taken from [musicalskele] under the [MIT License][BLAHAJ-PRIDE].

</details>

<details><summary>Code license [<b>MPL-2.0</b>]</summary>

The code for Joy is available under the [MPL-2.0][CODE].

</details>

[LICENSE]: https://git.pridecraft.gay/joy/tree/HEAD/LICENSE.md
[CODE]: https://git.pridecraft.gay/joy/tree/HEAD/LICENSE-CODE
[BLAHAJ-BASE]: https://git.pridecraft.gay/joy/tree/HEAD/LICENSE-BLAHAJ-BASE
[BLAHAJ-PRIDE]: https://git.pridecraft.gay/joy/tree/HEAD/LICENSE-BLAHAJ-PRIDE
[ASSETS]: https://git.pridecraft.gay/joy/tree/HEAD/LICENSE-ASSETS
[MUSIC]: https://git.pridecraft.gay/joy/tree/HEAD/LICENSE-MUSIC
[DaFuqs]: https://github.com/DaFuqs/Blahaj
[hibiii]: https://github.com/hibiii/Blahaj
[musicalskele]: https://github.com/musicalskele/blahaj
[Pride Pack]: https://git.pridecraft.gay/pridepack

</small>

<Socials/>

## Contributors

<Developers type="small"/>

[Pridecraft Studios]: /
