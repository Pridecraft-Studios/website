<script lang="ts">
import social from '$lib/vars/social';
import devs from '$lib/vars/devs';
</script>

# Pridecraft Studios

We’re a team creating LGBT stuff for Minecraft. We make everything from Resource Packs to Mods, without overgaying the
game and making it look like somebody just vomited rainbows all over the place.

The only things we feel more free to “overqueer” (not that there is such a thing, too much gayness) is our mod, because,
well, it’s *our* mod.

In our modifications, we aim to not make the whole game rainbow. Not changing the terrain blocks, for example, is
something we do to make the game not look like flat rainbows.

For our Resource Packs, we change smaller things, such as beds and entities. In our mod, we may make a Gay Ore so some
very rainbow world generation will at least make some sense.

If you want to contribute, check out our [Github](https://github.com/Pridecraft-Studios/) repositories.

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

## Developers

{#each Object.entries(devs) as [key, value]}
<a rel="me" href="{value.link}">{key}</a><br/>
{/each}