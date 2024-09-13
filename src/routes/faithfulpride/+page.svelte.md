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

# Faithful Pride

<aside class="shields">
<ModrinthShield modid="faithfulpride"/>
<CurseForgeShield modid="faithful-pride" type="texture-packs" projectid="831872"/>
<Shield href="https://git.pridecraft.gay/faithfulpride/releases"
        base="github/downloads/pridecraft-studios/faithfulpride/total"
        logo="github"
        label="GitHub Downloads"
        alt="GitHub Downloads (all assets, all releases)"/>
<Shield href="https://git.pridecraft.gay/faithfulpride/commits"
        base="github/commit-activity/t/pridecraft-studios/faithfulpride"
        logo="github"
        alt="GitHub Commit Activity"/>
</aside>

This is Faithful Pride. A LGBTQ+ Pride themed Resource Pack made by [Pridecraft Studios],
with the 32x quality and looks of [Faithful](https://faithfulpack.net/). We make Minecraft queer.

<Donate />

## Screenshots

TODO:

<Who />

## Where can I download Faithful Pride?

<ul class="badges">
<li><Badge id="modrinth" rel="me" link="https://modrinth.com/resourcepack/faithfulpride" ext="svg" head="Available on" name="Modrinth"/></li>
<li><Badge id="curseforge" rel="me" link="https://www.curseforge.com/minecraft/texture-packs/faithful-pride" ext="svg" head="Available on" name="CurseForge"/></li>
<li><Badge id="github" rel="me" link="https://github.com/Pridecraft-Studios/faithfulpride" ext="svg" head="Available on" name="GitHub"/></li>
</ul>

<Socials />

[Pridecraft Studios]: /
