<script lang="ts">
import Badge from '$lib/components/BadgeRaw.svelte';
import Badges from '$lib/components/Badges.svelte';
import Picture from '$lib/components/Picture.svelte';
import Shield from '$lib/shields/Shield.svelte';
import ModrinthShield from '$lib/shields/Modrinth.svelte';
import CurseForgeShield from '$lib/shields/CurseForge.svelte';

import { Who, Socials, Donate, WwpMusic } from '$lib/boilerplate';

</script>

<!-- Cuties -->

# PridePack

<aside class="shields">
<ModrinthShield modid="pridepack"/>
<CurseForgeShield modid="pride-pack" type="texture-packs" projectid="831872"/>
<Shield href="https://git.pridecraft.gay/pridepack/releases"
        base="github/downloads/pridecraft-studios/pridepack/total"
        logo="github"
        label="GitHub Downloads"
        alt="GitHub Downloads (all assets, all releases)"/>
<Shield href="https://git.pridecraft.gay/pridepack/commits"
        base="github/commit-activity/t/pridecraft-studios/pridepack"
        logo="github"
        alt="GitHub Commit Activity"/>
</aside>

This is PridePack, a Resource Pack made by [Pridecraft Studios](https://pridecraft.gay).
It comes with many LGBT Pride additions, such as paintings, beds, mobs and Main Menu changes.

<Donate/>

## Screenshots

<Picture name="biis-pollinating-allium" alt="A few biis pollinating a flower with glow berries on the background" size="1920w" />
<Picture name="biis-pollinating-azalea" alt="A group of biis, many of the baby variant, pollinating an Azalea Bush" size="1920w" />
<Picture name="bii-jungle" alt="Bii bees in a jungle" size="1920w" />
<Picture name="trans-allium" alt="Trans-coloured alliums scattered around" size="1920w" />
<Picture name="pride-flag-paintings" alt="Six pride flag themed paitings on the walls of a Lush Cave" size="1920w" />

<Who/>

## Where can I download PridePack?

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
