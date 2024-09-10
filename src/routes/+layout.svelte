<script lang="ts">
	import '../app.scss';

	import Popup from '$lib/components/Popup.svelte';
	import Link from '$lib/components/Link.svelte';
</script>

<svelte:head>
	<title>Pridecraft Studios</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="theme-color" content="#62A930" />
	<meta name="description" content="Minecraft Gay Real" />
	<meta name="color-scheme" content="light dark" />
	<meta property="og:type" content="website" />
	<meta property="og:locale" content="en_US" />
	<meta property="og:title" content="Pridecraft Studios" />
	<meta property="og:description" content="Minecraft Gay Real" />
	<meta property="og:site_name" content="Pridecraft" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta property="og:image" content="https://pridecraft.gay/banner.png" />
	<link type="application/json+oembed" href="https://pridecraft.gay/oembed.json" />
	<link rel="preconnect" href="https://fonts.bunny.net" />
	<link href="https://fonts.bunny.net/css?family=abeezee:400,400i|inter:400,800" rel="stylesheet" />
</svelte:head>
<header>
	<a id="logo" href="/">
		<img src="/favicon.png" alt="Pridecraft Studios Icon" width="56" height="56" />
		<span>Pridecraft Studios</span>
	</a>
	<div class="grow" aria-hidden="true"></div>
	<nav>
		<a href="/">Home</a>
		<Popup id="projects" label="Projects">
			<ul>
				<Link href="/pridepack">Pridepack</Link>
				<Link href="/pridegui">PrideGUI</Link>
				<!--Link href="/joy">Joy</Link-->
				<!--Link href="/mspride">MSPRIDE</Link-->
				<Link href="/pridebones">Pride Bones</Link>
				<!--Link href="/faithfulpride">Faithful Pride</Link-->
			</ul>
		</Popup>
	</nav>
</header>
<main>
	<slot />
</main>
