---
layout: main
---
<!-- Copyright (c) 2023-2024 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
import '../developers.scss';
import devs from '$lib/vars/devs.yaml';

import Picture from '$lib/components/Picture.svelte';

import SocialsMap from '$lib/socials';

import { Who, Socials, Donate } from '$lib/boilerplate';
</script>

# Pridecraft Studios

<Who/>

<Donate/>

## Projects

### Pridepack

[Pridepack](pridepack) is our first and most popular project, adding queer tweaks to the game in decoration blocks,
and on some entities, like axolotls, bees, foxes and sniffers.
It is also available for Bedrock Edition on [MCPEDL](https://mcpedl.com/pridepack).

<Picture name="pridepack/banner" order="avif" original="avif"
	alt="The Pride Pack banner, featuring a rainbow bed, a bii, an aroace axolotl, a sleeping fox,
		chiseled bookshelves with rainbow-colored books, and a gay flag painting."
/>

### PrideGUI

[PrideGUI](pridegui) is our GUI resource pack, adding a nice dark-themed UI with pride to all containers.
It has a variant for every Minecraft version, starting from Minecraft Beta 1.7.3.

<Picture name="pridegui-dark/banner" order="avif" original="avif"
	alt="The PrideGUI banner, featuring various inventories, and the options menu."
/>

### Joy

[Joy](joy) is an upcoming mod adding pride content,
including all content from Pridepack, to Minecraft.
It will even feature its own OST!
Joy is really early in development, and is still in planning phase.

### Pride Bones

[Pride Bones](pridebones) is a version of Pridepack based on Bare Bones' style,
which has a more simplistic look to it, similar to the Minecraft Trailers art style.

<Picture name="pridebones/banner" order="avif" original="avif"
	alt="The Pride Pack banner, featuring a rainbow bed, a bii, an aroace axolotl, a sleeping fox,
		chiseled bookshelves with rainbow-colored books, and a gay flag painting."
/>

<Socials />

## Developers

<ul class="developers">
	{#each Object.entries(devs) as [key, value]}
		<li class="{key}">
			<span>
				<span class="heading">
					<img src="{value.avatar}" width="96" height="96" loading="lazy" aria-labelledby="{key}" alt="" hidden/>
					<h3 id="{key}">{key}</h3>
					<small class="roles">
						<!-- https://github.com/sveltejs/svelte/issues/7473#issuecomment-1606105476 is frankly clever -->
						{#each value.roles as role, i}
							{#if i > 0}, {/if}<i title="{role}">{role}</i>
						{/each}
					</small>
				</span>
				<p class="bio">{@html value.bio ?? ""}</p>
				{#if value.socials}
					<p class="links">
					{#each Object.entries(value.socials) as [name, link], i}
						{#if i > 0}, {/if}<a rel="me" href="{link}" title="{SocialsMap[name]}">{name}</a>
					{/each}
					</p>
				{/if}
			</span>
		</li>
	{/each}
</ul>
