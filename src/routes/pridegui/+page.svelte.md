<script lang="ts">
import Badge from '$lib/components/BadgeRaw.svelte';
import Badges from '$lib/components/Badges.svelte';
import Picture from '$lib/components/Picture.svelte';

import { Modrinth, GitHubDownloads, GitHubCommits } from '$lib/shields';
import { Who, Socials, Donate } from '$lib/boilerplate';
</script>

<!-- Clyde had this so I'm adding it too -->
<!-- ^ what does this meannnn -->

# PrideGUI

<aside class="shields">
<Modrinth modid="pridegui"/>
<GitHubDownloads modid="pridegui" />
<GitHubCommits modid="pridegui" />
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
