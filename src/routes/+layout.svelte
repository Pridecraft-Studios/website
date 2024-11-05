<!-- Copyright (c) 2023-2024 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	import '../app.scss';

	import Popup from '$lib/components/Popup.svelte';
	import { RosetteLinkListEntry as Link } from '$lib/boilerplate';
</script>

<svelte:head>
	<title>Pridecraft Studios</title>
	<meta name="theme-color" content="#62A930" />
	<meta name="description" content="Minecraft Gay Real" />
	<meta name="color-scheme" content="light dark" />
	<meta property="og:type" content="website" />
	<meta property="og:locale" content="en_US" />
	<meta property="og:title" content="Pridecraft Studios" />
	<meta property="og:description" content="Minecraft Gay Real" />
	<meta property="og:site_name" content="Pridecraft" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta property="og:image" content="https://pridecraft.gay/banner.jpeg" />
	<link type="application/json+oembed" href="https://pridecraft.gay/oembed.json" />
	<link rel="preconnect" href="https://fonts.bunny.net" />
	<link href="https://fonts.bunny.net/css?family=abeezee:400,400i|inter:400,800" rel="stylesheet" />
</svelte:head>
<header>
	<a class="logo" href="/">
		<img src="/logo.svg" alt="" width="48" height="48" aria-labelledby="logo" />
		<span id="logo">Pridecraft Studios</span>
	</a>
	<div class="grow" aria-hidden="true"></div>
	<nav>
		<Popup id="projects" label="Projects">
			<ul>
				<Link id="pridepack" type="bi no-bg">Pride Pack</Link>
				<Link id="pridegui" type="pridegui no-bg">Pride GUI</Link>
				<!--Link id="joy">Joy</Link-->
				<!--Link id="mspride">MSPRIDE</Link-->
				<Link id="pridebones" type="trans no-bg">Pride Bones</Link>
				<!--Link id="faithfulpride">Faithful Pride</Link-->
			</ul>
		</Popup>
	</nav>
</header>
<main>
	<slot />
</main>
<footer>
	<hr />
	<p>
		Copyright © 2023-2024 Pridecraft Studios &amp;
		<a href="https://git.pridecraft.gay/website">contributors</a>. Check the
		<a rel="license" href="https://git.pridecraft.gay/website/blob/HEAD/LICENSE.md">license</a> for details.
	</p>
	<p>
		Website designed by <a href="https://ampflower.gay">Ampflower</a> and
		<a href="https://skye.vg/">skyevg</a>.
	</p>
	<p>
		Not an official Minecraft product. Not associated, approved, or endorsed by Mojang Studios or
		Microsoft Corporation.
	</p>
</footer>
