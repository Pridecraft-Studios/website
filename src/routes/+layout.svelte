<script lang="ts">
import "../app.postcss";
import { Menu, MenuButton, MenuItems, MenuItem } from "@rgossiaux/svelte-headlessui";
import { ChevronDownIcon } from "svelte-feather-icons";
</script>
<svelte:head>
    <title>Pridecraft Studios</title>
</svelte:head>
<header class="h-16 p-4 bg-surface0 flex flex-row space-x-2 items-center pr-8 mr-20 rounded-br-full">
    <a href="/" class="text-xl font-semibold flex flex-row items-center gap-2">
        <img class="w-10 h-10 rounded-lg" src="/favicon.png" alt="Pridecraft Studios Icon">
        Pridecraft Studios
    </a>
    <div class="grow" aria-hidden="true"></div>
    <nav class="flex flex-row gap-2">
        <a href="/" class="p-2 hover:bg-surface1 rounded-xl text-lg">Home</a>
        <a href="/pridepack" class="p-2 hover:bg-surface1 rounded-xl text-lg">Pridepack</a>
        <!-- <Menu>
            <MenuButton class="p-2 hover:bg-surface1 rounded-xl text-lg">
                Dropdown
                <ChevronDownIcon class="inline" />
            </MenuButton>
            <MenuItems class="absolute flex flex-col bg-surface1 mt-2 w-32 origin-top-left rounded-lg shadow-lg focus:outline-none">
                <MenuItem class="contents">
                    <a href="/stuff" class="hover:bg-surface2 text-lg rounded-t-lg p-2">
                        Stuff
                    </a>
                </MenuItem>
                <MenuItem class="contents">
                    <a href="/stuff" class="hover:bg-surface2 text-lg p-2">
                        Stuff
                    </a>
                </MenuItem>
                <MenuItem class="contents">
                    <a href="/stuff" class="hover:bg-surface2 text-lg rounded-b-lg p-2">
                        Stuff
                    </a>
                </MenuItem>
            </MenuItems>
        </Menu>
        <a href="/stuff" class="p-2 hover:bg-surface1 rounded-xl text-lg">Stuff</a> -->
    </nav>
</header>
<div class="prose dark:prose-invert m-4">
    <slot />
</div>