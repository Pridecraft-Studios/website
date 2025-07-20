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

# Prideful

<aside class="shields">
<Modrinth modid="prideful"/>
<CurseForge modid="prideful" type="texture-packs" projectid="1145806"/>
<GitHubDownloads modid="prideful" />
<GitHubCommits modid="prideful" />
</aside>

This is Prideful, a version of Pridepack by [Pridecraft Studios] in the style of [Faithful 32x].
It comes with many LGBTQ+ Pride additions, including paintings, beds, mobs, candles and more!

<Donate/>

## Gallery

<p class="gallery prioritize-2">

<YouTube id="ZyazvpZAmGU" title="Pridepack Trailer on YouTube." />

<Picture name="prideful/banner" order="avif" original="avif"
	alt="The Prideful banner, featuring a rainbow bed, a bii, an aroace axolotl, a sleeping fox,
		chiseled bookshelves with rainbow-colored books, and a gay flag painting."
/>

<DynPicture name="bookshelves" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="Pride-themed chiseled bookshelves, candles and biis surrounding an enchanting table in a lush cave."
/>

<DynPicture name="aquarium" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="Trans, lesbian, progress and aroace themed axolotls in an aquarium,
		featuring pride, lesbian and asexual flag paintings to the left."
/>

<DynPicture name="gallery" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="A gallery featuring the pansexual, progress, rainbow and bisexual pride flags, along with an ally flag."
/>

<DynPicture name="foxes" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="Two foxes in front of a fire place,
		one of which is sleeping while the other is wearing pink &amp; white striped thigh-high socks."
/>

<DynPicture name="bedroom" fallback="jpeg" fallbackSize="3840x2160" original order="avif"
	alt="A bedroom featuring pride-themed candles and bed, with a sniffer peeking in."
/>

</p>

## Who

<Who/>

## Where can I download Prideful?

<ul class="badges">
<li><Badge id="modrinth" rel="me" link="https://modrinth.com/resourcepack/prideful" ext="svg" head="Available on" name="Modrinth"/></li>
<li><Badge id="curseforge" rel="me" link="https://www.curseforge.com/minecraft/texture-packs/prideful" ext="svg" head="Available on" name="CurseForge"/></li>
<li><Badge id="github" rel="me" link="https://github.com/Pridecraft-Studios/prideful" ext="svg" head="Available on" name="GitHub"/></li>
</ul>

<small>

Prideful by Pridecraft Studios is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/),
subject to limitations of [The Faithful License].

<WwpMusic />

[Faithful] is licensed under [The Faithful License].

</small>

<Socials/>

## Contributors

<Developers type="small"/>

[Pridecraft Studios]: /
[Faithful]: https://faithfulpack.net/
[Faithful 32x]: https://faithfulpack.net/downloads#Faithful%2032x
[The Faithful License]: https://faithfulpack.net/license
