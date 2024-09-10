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

# Pride Bones

<aside class="shields">
<ModrinthShield modid="pridebones"/>
<CurseForgeShield modid="pride-bones" type="texture-packs" projectid="1077808"/>
<Shield href="https://git.pridecraft.gay/pridebones/releases"
        base="github/downloads/pridecraft-studios/pridebones/total"
        logo="github"
        label="GitHub Downloads"
        alt="GitHub Downloads (all assets, all releases)"/>
<Shield href="https://git.pridecraft.gay/pridebones/commits"
        base="github/commit-activity/t/pridecraft-studios/pridebones"
        logo="github"
        alt="GitHub Commit Activity"/>
</aside>

This is Pride Bones, a version of Pridepack by [Pridecraft Studios] in the style of [Bare Bones].
It comes with many LGBT Pride additions, such as paintings, beds, mobs and main menu changes.

<Donate />

# Screenshots

TODO:

<Who />

## Where can I download Pride Bones?

<ul class="badges">
<li><Badge id="modrinth" rel="me" link="https://modrinth.com/resourcepack/pridebones" ext="svg" head="Available on" name="Modrinth"/></li>
<li><Badge id="curseforge" rel="me" link="https://www.curseforge.com/minecraft/texture-packs/pride-bones" ext="svg" head="Available on" name="CurseForge"/></li>
<li><Badge id="github" rel="me" link="https://github.com/Pridecraft-Studios/pridebones" ext="svg" head="Available on" name="GitHub"/></li>
</ul>

<small>

Pride Bones by Pridecraft Studios is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

<WwpMusic />
</small>

<Socials/>

[Pridecraft Studios]: https://pridecraft.gay/
[Bare Bones]: https://modrinth.com/resourcepack/bare-bones
