<script lang="ts">
import Badge from '$lib/components/BadgeRaw.svelte';
import Badges from '$lib/components/Badges.svelte';
import Picture from '$lib/components/Picture.svelte';
import Shield from '$lib/shields/Shield.svelte';
import ModrinthShield from '$lib/shields/Modrinth.svelte';

import { Who, Socials, Donate } from '$lib/boilerplate';
</script>

<!-- Clyde had this so I'm adding it too -->
<!-- ^ what does this meannnn -->

# PrideGUI

<aside class="shields">
<ModrinthShield modid="pridegui"/>
<Shield href="https://git.pridecraft.gay/pridegui/releases"
        base="github/downloads/pridecraft-studios/pridegui/total"
        logo="github"
        label="GitHub Downloads"
        alt="GitHub Downloads (all assets, all releases)"/>
<Shield href="https://git.pridecraft.gay/pridegui/commits"
        base="github/commit-activity/t/pridecraft-studios/pridegui"
        logo="github"
        alt="GitHub Commit Activity"/>
</aside>

This is an official addon to [PridePack](/pridepack) that changes the Minecraft GUI to have a dark theme,
with LGBT details.
It is available for many versions, starting from Beta 1.7.3.
You can get [PrideGUI Legacy here](https://modrinth.com/project/pridegui-legacy),
which has versions of the pack for Beta 1.7.3 all the way through 1.20.1.

![PrideGUI banner](https://cdn.modrinth.com/data/6mcKx2Pb/images/05250c177741152dca8e964ea47a3806d23d4432.png)

<Donate/>

<Who/>

## Where can I download PrideGUI?

<ul class="badges">
<li><Badge id="modrinth" rel="me" link="https://modrinth.com/resourcepack/pridegui" ext="svg" head="Available on" name="Modrinth"/></li>
<li><Badge id="github" rel="me" link="https://github.com/Pridecraft-Studios/pridegui" ext="svg" head="Available on" name="GitHub"/></li>
</ul>

<small>

PrideGUI by Pridecraft Studios is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
</small>

<Socials/>
