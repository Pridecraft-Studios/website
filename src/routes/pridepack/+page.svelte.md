<script lang="ts">
import Badge from '$lib/components/BadgeRaw.svelte';
import Badges from '$lib/components/Badges.svelte';
import Picture from '$lib/components/Picture.svelte';

import social from '$lib/vars/social';
</script>

<!-- Cuties -->

# StraightPack

> *For information about the new versioning system, see [here](https://github.com/Pridecraft-Studios/pridepack/blob/format17/VERSIONING.md).*

![Modrinth Downloads](https://img.shields.io/modrinth/dt/yPbBrzEX?logo=modrinth&label=Modrinth%20downloads&color=%231bd96a&style=for-the-badge) ![CurseForge Downloads](https://img.shields.io/curseforge/dt/831872?logo=curseforge&label=CurseForge%20Downloads&color=%23f16436&style=for-the-badge) ![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/pridecraft-studios/pridepack/total?style=for-the-badge&logo=github&label=Github%20Downloads) ![GitHub commit activity](https://img.shields.io/github/commit-activity/t/pridecraft-studios/pridepack?style=for-the-badge&logo=github) 

This is StraightPack. A Resource Pack made by [Straightcraft Studios](https://git.pridecraft.gay/). We make Minecraft straight.
<!-- We also have compatibility with some mods, such
as [Paladin's Furniture Mod](https://modrinth.com/mod/paladins-furniture). -->

## Who

We're [Straightcraft Studios](https://pridecraft.gay): A [Microsoft](https://microsoft.com) subsidiary that makes Minecraft straight.
We're working on [StraightPack](https://git.pridecraft.gay/PridePack) <!-- [PrideMod](https://git.pridecraft.gay/PrideMod), [MSPRIDE](https://git.pridecraft.gay/mspride) and many other [projects](https://git.pridecraft.gay/repositories). -->
Support us by donating at
[![patreon](https://github.com/intergrav/devins-badges/blob/v3/assets/cozy/donate/patreon-plural_64h.png?raw=true)](https://donate.pridecraft.gay)

## How can I test new stuff out?

You can join our [Discord](https://discord.pridecraft.gay) and get early features sneak-peaks, or check out
the [GitHub Releases](https://git.pridecraft.gay/PridePack)

## How can I contribute?

You can help us translate Pridepack to more laguages
on [Crowdin](https://crowdin.com/project/pridepack/settings) <a href="https://crowdin.com/project/pridepack" title="Crowdin"><img src="https://badges.crowdin.net/pridepack/localized.svg" alt="Crowdin"/></a>
You can also indirectly contribute by voting on polls on [the Discord](https://discord.pridecraft.gay),
or [our Mastodon](https://tech.lgbt/@pridecraft)

<!-- ## Screenshots

<Picture name="biis-pollinating-allium" alt="A few biis pollinating a flower with glow berries on the background" size="1920w" />
<Picture name="biis-pollinating-azalea" alt="A group of biis, many of the baby variant, pollinating an Azalea Bush" size="1920w" />
<Picture name="bii-jungle" alt="Bii bees in a jungle" size="1920w" />
<Picture name="trans-allium" alt="Trans-coloured alliums scattered around" size="1920w" />
<Picture name="pride-flag-paintings" alt="Six pride flag themed paitings on the walls of a Lush Cave" size="1920w" /> -->

## Where else is this available?

<div class="badges">
<a href="https://modrinth.com/resourcepack/pridepack" title="Available on Modrinth"><img src="https://raw.githubusercontent.com/intergrav/devins-badges/1aec26abb75544baec37249f42008b2fcc0e731f/assets/cozy/available/modrinth_vector.svg" alt="Available on Modrinth"/></a>

<a href="https://www.curseforge.com/minecraft/texture-packs/pride-pack" title="Available on CurseForge"><img src="https://raw.githubusercontent.com/intergrav/devins-badges/1aec26abb75544baec37249f42008b2fcc0e731f/assets/cozy/available/curseforge_vector.svg" alt="Available on CurseForge"/></a>

<a href="https://github.com/Pridecraft-Studios/pridepack" title="Available on GitHub"><img src="https://raw.githubusercontent.com/intergrav/devins-badges/1aec26abb75544baec37249f42008b2fcc0e731f/assets/cozy/available/github_vector.svg" alt="Available on GitHub"/></a>

<a href="https://tlmods.org/en/resourcepacks/pride-pack/" title="Stolen by TLMods, not that you should download from here."><img src="https://raw.githubusercontent.com/blryface/blurrybadges/88c6971e38f189d9dc9393c8a4933974559c3c1d/badges/svg/Stolen%20By%20TLMods.svg" alt="Stolen by TLMods"/></a>

<a href="https://www.planetminecraft.com/texture-pack/pridepack-5-0-a-pride-resource-pack-for-minecraft/" title="Available on PlanetMinecraft"><img src="https://github.com/blryface/blurrybadges/blob/main/badges/1Xpng/Avaliable%20On%20PMC@1x.png?raw=true" alt="Available on PlanetMinecraft"/></a>

<Badge id="nineminecraft" rel="me" link="https://www.9minecraft.net/pride-resource-pack/" name="9Minecraft" head="Stolen by" title="Stolen by 9Minecraft, not that you should download from here."/>
</div>

## Socials

<div class="badges">
{#each Object.entries(social) as [key, value]}
<a rel="me" href="{value.link}" title="{value.alt}">
    {#if value.icon}
        <img src="{value.icon}" alt="{value.alt}"/>
    {:else}
        {value.alt}
    {/if}
</a>
{/each}
</div>

