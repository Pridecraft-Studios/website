<script lang="ts">
import social from '$lib/vars/social';
import devs from '$lib/vars/devs';
</script>

# Straightcraft Studios

We're a subsidiary of [Microsoft](https://microsoft.com) making [Straight Pride](https://straight.pride) modifications to Minecraft.
We make your game look as heterosexual as possible, removing any signs of rainbows that are vomited over the game.

If you find something gay in the game please report it immediately to [Minecraft's Bug Tracker](https://worldwidepixel.ca/discord) so we can work to remove it ASAP.

In all of our projects we aim to make the game the least gay possible, and only with Male and Female genders and pronouns. None of that "gender neutral" bullcrap.

If you want to contribute, check out our [Github](https://git.pridecraft.gay/) repositories, or
our [Crowdin](https://translate.pridecraft.gay)

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

ᶠᵒʳ ˡᵉᵍᵃˡ ʳᵉᵃˢᵒⁿˢ, ᵗʰᵉ "ᴹᶦᶜʳᵒˢᵒᶠᵗ ˢᵘᵇˢᶦᵈᶦᵃʳʸ" ᵖᵃʳᵗ ᶦˢ ᵃ ʲᵒᵏᵉ.