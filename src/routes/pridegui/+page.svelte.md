---
layout: main
title: "PrideGUI"
description: "Four LGBTQ+ pride themed GUI resource packs for Minecraft."
image: /gallery/pridegui-light/banner.jpeg
---
<!-- Copyright (c) 2023-2025 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
import Badge from '$lib/components/BadgeRaw.svelte';
import Badges from '$lib/components/Badges.svelte';
import Developers from '$lib/components/Developers.svelte';
import Picture from '$lib/components/Picture.svelte';

import { Modrinth, GitHubDownloads, GitHubCommits } from '$lib/shields';
import { Who, Socials, Donate, Rosette } from '$lib/boilerplate';
</script>

<!-- Clyde had this so I'm adding it too -->
<!-- ^ what does this meannnn -->

# PrideGUI

<aside class="shields">
<Modrinth modid="pridegui"/>
<GitHubDownloads modid="pridegui" />
<GitHubCommits modid="pridegui" />
</aside>

PrideGUI is an official addon to [Pride Pack](/pridepack) that changes the Minecraft GUI
to add LGBTQ+ details and introduce dark and light themes!
You can additionally get [PrideGUI Legacy here](https://modrinth.com/project/pridegui-legacy),
which has versions of the pack for Alpha 1.2.2 all the way through 1.20.1.

<Picture name="pridegui-dark/banner" order="avif" original="avif"
	alt="The PrideGUI banner, featuring various inventories, and the options menu."
/>

<Donate/>

## Who

<Who/>

## Where can I download PrideGUI?

<ul class="varied">
<li class="pridegui dark">
	<h3><Rosette type="gay no-bg">Dark Mode</Rosette></h3>
	<ul class="badges">
	<li><Badge id="modrinth" rel="me" link="https://modrinth.com/resourcepack/pridegui" ext="svg" head="Available on" name="Modrinth"/></li>
	<li><Badge id="github" rel="me" link="https://git.pridecraft.gay/pridegui" ext="svg" head="Available on" name="GitHub"/></li>
	</ul>
</li>
<li class="pridegui dark legacy">
	<h3><Rosette type="gay no-bg">Dark Mode - Legacy</Rosette></h3>
	<ul class="badges">
	<li><Badge id="modrinth" rel="me" link="https://modrinth.com/resourcepack/pridegui-legacy" ext="svg" head="Available on" name="Modrinth"/></li>
	<li><Badge id="github" rel="me" link="https://git.pridecraft.gay/pridegui/branches/all?query=legacy" ext="svg" head="Available on" name="GitHub"/></li>
	</ul>
</li>
<li class="pridegui light">
	<h3><Rosette type="lesbian no-bg">Light Mode</Rosette></h3>
	<ul class="badges">
	<li><Badge id="modrinth" rel="me" link="https://modrinth.com/resourcepack/pridegui-light" ext="svg" head="Available on" name="Modrinth"/></li>
	<li><Badge id="github" rel="me" link="https://git.pridecraft.gay/pridegui/tree/light/main" ext="svg" head="Available on" name="GitHub"/></li>
	</ul>
</li>
<li class="pridegui light legacy">
	<h3><Rosette type="lesbian no-bg">Light Mode - Legacy</Rosette></h3>
	<ul class="badges">
	<li><Badge id="modrinth" rel="me" link="https://modrinth.com/resourcepack/pridegui-legacy-light" ext="svg" head="Available on" name="Modrinth"/></li>
	<li><Badge id="github" rel="me" link="https://git.pridecraft.gay/pridegui/branches/all?query=light%2Flegacy" ext="svg" head="Available on" name="GitHub"/></li>
	</ul>
</li>
</ul>

<small>

PrideGUI by Pridecraft Studios is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
</small>

<Socials/>

## Contributors

<Developers type="small"/>
