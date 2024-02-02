<script lang="ts">
import Badge from '$lib/components/BadgeRaw.svelte';
import Badges from '$lib/components/Badges.svelte';
import Picture from '$lib/components/Picture.svelte';

import social from '$lib/vars/social';
</script>

<!-- Cuties -->

# PridePack

> *For information about the new versioning system, see [here](https://github.com/Pridecraft-Studios/pridepack/blob/format17/VERSIONING.md).*

![Modrinth Downloads](https://img.shields.io/modrinth/dt/yPbBrzEX?logo=modrinth&label=Modrinth%20downloads&color=%231bd96a) ![CurseForge Downloads](https://img.shields.io/curseforge/dt/831872?logo=curseforge&label=CurseForge%20Downloads&color=%23f16436)

This is PridePack. A Resource Pack made by [Pridecraft Studios](https://git.pridecraft.gay/). We make Minecraft queer.
<!-- We also have compatibility with some mods, such
as [Paladin's Furniture Mod](https://modrinth.com/mod/paladins-furniture). -->

## Who

We're [Pridecraft Studios](https://pridecraft.gay): A team that makes LGBT stuff to Minecraft. We're working
on [PridePack](https://git.pridecraft.gay/PridePack), [PrideMod](https://git.pridecraft.gay/PrideMod), [MSPRIDE](https://git.pridecraft.gay/mspride) and many
other [projects](https://git.pridecraft.gay/repositories).
Support us my donating at
[![ko-fi](https://raw.githubusercontent.com/intergrav/devins-badges/1aec26abb75544baec37249f42008b2fcc0e731f/assets/cozy/donate/kofi-plural_vector.svg)](https://donate.pridecraft.gay)

## How can I test new stuff out?

You can join our [Discord](https://discord.pridecraft.gay) and get early features sneak-peaks, or check out
the [GitHub Releases](https://git.pridecraft.gay/PridePack)

## How can I contribute?

You can help us translate Pridepack to more laguages
on [Crowdin](https://crowdin.com/project/pridepack/settings) <a href="https://crowdin.com/project/pridepack" title="Crowdin"><img src="https://badges.crowdin.net/pridepack/localized.svg" alt="Crowdin"/></a>
You can also indirectly contribute by voting on polls on [the Discord](https://discord.pridecraft.gay),
or [our Mastodon](https://tech.lgbt/@pridecraft)

## What mods are currently supported?

Currently, the only themed mod is [Paladin's Furniture Mod](https://modrinth.com/mod/paladins-furniture), which is
avaliable on the base Pridepack resource pack.
We plan adding support for the [Create Mod](https://modrinth.com/mod/create)
, [More Axolotl Variants Mod](https://modrinth.com/mod/mavm) (*could be added to Pridemod instead*)
, [Botania](https://modrinth.com/mod/botania) (gay tater :thonk:) and many other mods we get suggestions for. If you
have an idea, send it [In this channel](https://canary.discord.com/channels/1091969030694375444/1105937605838770227) on
our discord.

## Screenshot

<Picture name="biis" alt="Bii bees everywhere" size="1920w" />
<Picture name="bii-jungle" alt="Bii bees in a jungle" size="1920w" />
<Picture name="trans-allium" alt="Trans-coloured alliums scattered around" size="1920w" />
<Picture name="old-paintings" alt="Old paintings found in older versions of Pridepack" size="1920w" />

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

