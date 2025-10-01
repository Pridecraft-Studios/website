---
layout: main
title: "Pridepack"
description: "A LGBTQ+ pride themed resource pack for Minecraft."
image: /gallery/pridepack/banner.jpeg
---
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

# Pridepack

<aside class="shields">
<Modrinth modid="pridepack"/>
<CurseForge modid="pride-pack" type="texture-packs" projectid="831872"/>
<GitHubDownloads modid="pridepack" />
<GitHubCommits modid="pridepack" />
</aside>

This is Pridepack, a Resource Pack made by [Pridecraft Studios].
It comes with many LGBTQ+ Pride additions, including paintings, beds, mobs, candles and more!

<Donate/>

## Gallery

<p class="gallery prioritize-2">

<YouTube id="ZyazvpZAmGU" title="Pridepack Trailer on YouTube." />

<Picture name="pridepack/banner" order="avif" original="avif"
	alt="The Pride Pack banner, featuring a rainbow bed, a bii, an aroace axolotl, a sleeping fox,
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

## Where can I download Pridepack?

<ul class="badges">
<li><Badge id="modrinth" rel="me" link="https://modrinth.com/resourcepack/pridepack" ext="svg" head="Available on" name="Modrinth"/></li>
<li><Badge id="curseforge" rel="me" link="https://www.curseforge.com/minecraft/texture-packs/pride-pack" ext="svg" head="Available on" name="CurseForge"/></li>
<li><Badge id="github" rel="me" link="https://github.com/Pridecraft-Studios/pridepack" ext="svg" head="Available on" name="GitHub"/></li>
</ul>

<small>

Pridepack by Pridecraft Studios is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

<WwpMusic />
</small>

<Socials/>

## Contributors

<Developers type="small"/>

[Pridecraft Studios]: /
