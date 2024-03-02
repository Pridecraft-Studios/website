<script lang="ts">
import "../app.postcss";
import "../branding.scss";
import { Menu, MenuButton, MenuItems, MenuItem } from "@rgossiaux/svelte-headlessui";
import { ChevronDownIcon } from "svelte-feather-icons";


</script>
<svelte:head>
    <title>Pridecraft Studios</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="theme-color" content="#FF0000"/>
    <meta name="description" content="Minecraft Gay Real"/>
    <meta property="og:type" content="website"/>
    <meta property="og:locale" content="en_US"/>
    <meta property="og:title" content="Pridecraft Studios"/>
    <meta property="og:description" content="Minecraft Gay Real"/>
    <meta property="og:site_name" content="Pridecraft"/>
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="https://pridecraft.gay/banner.png"/>
    <link type="application/json+oembed" href="https://pridecraft.gay/oembed.json"/>
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=inter:400,800" rel="stylesheet"/>
</svelte:head>
<header class="h-16 p-4 bg-surface0 flex flex-row space-x-2 items-center pr-8 mr-20 rounded-br-full">
    <a href="/" class="text-xl font-semibold flex flex-row items-center gap-2">
        <img class="w-10 h-10 rounded-lg" src="/favicon.png" alt="Pridecraft Studios Icon">
        Pridecraft Studios
    </a>
    <div class="grow" aria-hidden="true"></div>
    <nav class="flex flex-row gap-2">
       <!-- <a href="/" class="p-2 hover:bg-surface1 rounded-xl text-lg">Home</a>
        <a href="/pridepack" class="p-2 hover:bg-surface1 rounded-xl text-lg">Pridepack</a>
        <a href="/pridegui" class="p-2 hover:bg-surface1 rounded-xl text-lg">PrideGUI</a> -->

        
        <a href="/" class="p-2 hover:bg-surface1 rounded-xl text-lg">Home</a>
        <Menu>
            <MenuButton class="p-2 hover:bg-surface1 rounded-xl text-lg">
                Projects
                <ChevronDownIcon class="inline" />
            </MenuButton>
            <MenuItems class="absolute flex flex-col bg-surface1 mt-2 w-32 origin-top-left rounded-lg shadow-lg focus:outline-none">
                <MenuItem class="contents">
                    <a href="/pridepack" class="hover:bg-surface2 text-lg rounded-t-lg p-2">
                        Pridepack
                    </a>
                </MenuItem>
                <MenuItem class="contents">
                    <a href="/pridegui" class="hover:bg-surface2 text-lg p-2">
                        PrideGUI
                    </a>
                </MenuItem>
              <!---  <MenuItem class="contents">
                    <a href="/stuff" class="hover:bg-surface2 text-lg rounded-b-lg p-2">
                        PrideMod
                    </a>
                </MenuItem> --->
            </MenuItems>
        </Menu>

    </nav>
</header>
<div class="prose dark:prose-invert m-4">
    <slot />
</div>