<script lang="ts">
import devs from '$lib/vars/devs';

import Picture from '$lib/components/Picture.svelte';

import { Socials, Donate } from '$lib/boilerplate';
</script>

# Pridecraft Studios

We are a collective of developers making LGBTQ+ content for Minecraft.

We make resource packs and mods to add pride-themed stuff to the game, while trying not to "over-gay".
The main difference when compared to other packs,
is that we know how to keep the game from looking like someone vomited rainbows all over the place.

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

![PrideGUI banner](https://cdn.modrinth.com/data/6mcKx2Pb/images/05250c177741152dca8e964ea47a3806d23d4432.png)

### Joy
[Joy](https://git.pridecraft.gay/joy) is an upcoming mod adding pride content,
including all content from Pridepack, to Minecraft.
It will even feature its own OST!
Joy is really early in development, and is still in planning phase.

### PrideBones

[PrideBones](pridebones) is a version of Pridepack based on Bare Bones' style,
which has a more simplistic look to it, similar to the Minecraft Trailers art style.

<Picture name="pridebones/banner" order="avif" original="avif"
	alt="The Pride Pack banner, featuring a rainbow bed, a bii, an aroace axolotl, a sleeping fox,
		chiseled bookshelves with rainbow-colored books, and a gay flag painting."
/>


<Socials />

## Developers

{#each Object.entries(devs) as [key, value]}
<a rel="me" href="{value.link}">{key}</a><br/>
{/each}
