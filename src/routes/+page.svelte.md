<script lang="ts">
import devs from '$lib/vars/devs';

import { Socials } from '$lib/boilerplate';
</script>

# Pridecraft Studios

We're a collective of developers making LGBT-themed modifications to Minecraft.
We make everything from Resource Packs to Mods, without overgaying the
game and making it look like somebody just vomited rainbows all over the place.

The only things we feel more free to “overqueer” (not that there is such a thing, too much gayness) is our mod, because,
well, it’s _our_ mod.

In our modifications, we aim to not make the whole game rainbow. Not changing the terrain blocks, for example, is
something we do to make the game not look like flat rainbows.

For our Resource Packs, we change smaller things, such as beds and entities. In our mod, we may make a Gay Ore so some
very rainbow biome generation will at least make some sense.

If you want to contribute, check out our [Github](https://git.pridecraft.gay/) repositories, or
our [Crowdin](https://translate.pridecraft.gay)

<Socials />

## Developers

{#each Object.entries(devs) as [key, value]}
<a rel="me" href="{value.link}">{key}</a><br/>
{/each}
