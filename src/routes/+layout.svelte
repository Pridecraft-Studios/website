<script lang="ts">
import "../app.postcss";
import "../branding.scss";
import { Menu, MenuButton, MenuItems, MenuItem } from "@rgossiaux/svelte-headlessui";
import { ChevronDownIcon } from "svelte-feather-icons";


</script>
<svelte:head>
    <title>Straightcraft Studios</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="theme-color" content="#FF0000"/>
    <meta name="description" content="Minecraft Straight Real"/>
    <meta property="og:type" content="website"/>
    <meta property="og:locale" content="en_US"/>
    <meta property="og:title" content="Straightcraft Studios"/>
    <meta property="og:description" content="Minecraft Straight Real"/>
    <meta property="og:site_name" content="Straightcraft"/>
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="https://pridecraft.gay/banner.png"/>
    <link type="application/json+oembed" href="https://pridecraft.gay/oembed.json"/>
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=inter:400,800" rel="stylesheet"/>
</svelte:head>
<header class="h-16 p-4 bg-white flex flex-row space-x-2 items-center w-full border-b-black border-b-2">
    <a href="/" class="text-xl font-semibold flex flex-row items-center gap-2">
        <img class="w-10 h-10 rounded-lg" src="/favicon.png" alt="Straigtcraft Studios Icon">
        Straightcraft Studios
    </a>
    <div class="grow" aria-hidden="true"></div>
    <nav class="flex flex-row gap-2">
       <!-- <a href="/" class="p-2 hover:bg-surface1 rounded-xl text-lg">Home</a>
        <a href="/pridepack" class="p-2 hover:bg-surface1 rounded-xl text-lg">Pridepack</a>
        <a href="/pridegui" class="p-2 hover:bg-surface1 rounded-xl text-lg">PrideGUI</a> -->

        
        <a href="/" class="p-2 hover:bg-slate-100 rounded-xl text-lg">Home</a>
        <Menu>
            <MenuButton class="p-2 hover:bg-slate-100 rounded-xl text-lg">
                Projects
                <ChevronDownIcon class="inline" />
            </MenuButton>
            <MenuItems class="absolute flex flex-col bg-slate-100 mt-5 right-2 w-32 origin-top-left rounded-lg shadow-lg focus:outline-none">
                <MenuItem class="contents">
                    <a href="/pridepack" class="hover:bg-surface2 text-lg rounded-t-lg p-2">
                        StraightPack
                    </a>
                </MenuItem>
                <MenuItem class="contents">
                    <a href="/pridegui" class="hover:bg-surface2 text-lg p-2">
                        StraightGUI
                    </a>
                </MenuItem>
<!--            <MenuItem class="contents">
                    <a href="/pridemod" class="hover:bg-surface2 text-lg rounded-b-lg p-2">
                        PrideMod
                    </a>
                </MenuItem>
                <MenuItem class="contents">
                    <a href="/mspride" class="hover:bg-surface2 text-lg rounded-b-lg p-2">
                        MSPRIDE
                    </a>
                </MenuItem>
                <MenuItem class="contents">
                    <a href="/pridebones" class="hover:bg-surface2 text-lg rounded-b-lg p-2">
                        Pride Bones
                    </a>
                </MenuItem>
                <MenuItem class="contents">
                    <a href="/faithfulpride" class="hover:bg-surface2 text-lg rounded-b-lg p-2">
                        Faithful Pride
                    </a>
                </MenuItem> -->
            </MenuItems>
        </Menu>

    </nav>
</header>
<div class="prose dark:prose-invert m-4 max-w-[60rem] w-[60rem] p-4">
    <slot />
</div>
<section class="MC_globalFooterA_locale" data-aem-item="globalfooter_locale">
    <div class="MC_globalFooterA_ms-branding">
        <div class="MC_globalFooterA_ms-branding-container">
            <a class="flex flex-row flex-wrap items-center gap-2 font-medium" href="/" aria-label="Microsoft" data-aem-contentname="logo-action">
                <img class="MC_globalFooterA_ms-branding-logo h-8" src="/favicon.png" alt="Microsoft logo"> <span> Straightcraft </span>
            </a>
        </div>
        <div class="MC_globalFooterA_ms-branding-nav">
            <ul>
                
                    <li>
                        <a href="https://go.microsoft.com/fwlink/?linkid=521839" aria-label="Privacy and Cookies" data-aem-contentname="brandnav-action" target="_blank">
                            
                            Privacy and Cookies
                        </a>
                    </li>
                    
                
                    
                    
                
                    <li>
                        <a href="https://minecraft.net/eula" aria-label="Terms of use" data-aem-contentname="brandnav-action" target="_blank">
                            
                            Terms of use
                        </a>
                    </li>
                    
                
                    <li>
                        <a href="https://www.microsoft.com/trademarks" aria-label="Trademarks" data-aem-contentname="brandnav-action" target="_blank">
                            
                            Trademarks
                        </a>
                    </li>
                    
                
                    <li>
                        <a href="https://choice.microsoft.com/" aria-label="About our ads" data-aem-contentname="brandnav-action" target="_blank">
                            
                            About our ads
                        </a>
                    </li>
                    
                
                    
                    <li>
                        <span class="MC_globalFooterA_ms-branding-copyright">© 2024 Straightcraft Studios</span>
                    </li>
                
                    
                    
                
            </ul>
        </div>
        <div class="MC_globalFooterA_ms-branding-container">
            <a href="https://www.microsoft.com" aria-label="Microsoft" data-aem-contentname="logo-action">
                <img class="MC_globalFooterA_ms-branding-logo" src="https://www.minecraft.net/content/dam/minecraftnet/games/minecraft/logos/Logo_%20Microsoft.svg" alt="Microsoft logo">
            </a>
        </div>
    </div>
</section>
