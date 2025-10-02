<!-- Copyright (c) 2025 Pridecraft Studios & contributors
	SPDX-License-Identifier: CC-BY-SA-4.0
	https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	import { page } from '$app/stores';

	let pageTitle;
	export let title;
	export let description;
	export let color = '#62A930';
	export let image = '/banner.jpeg';

	if (title) {
		if (title.startsWith('\0')) {
			// Load bearing to keep `$page` in scope.
			let ignored = $page;
			title = eval(title.substring(1));
		}
		pageTitle = title + ' | Pridecraft Studios';
	} else {
		pageTitle = title = 'Pridecraft Studios';
	}

	if (description) {
		if (description.startsWith('\0')) {
			// Load bearing to keep `$page` in scope.
			let ignored = $page;
			description = eval(description.substring(1));
		}
	} else {
		description = 'Minecraft Gay Real';
	}

	if (image.startsWith('/')) {
		image = image.substring(1);
	}


</script>

<svelte:head>
	<title>{pageTitle}</title>
	<meta name="theme-color" content={color} />
	<meta name="description" content={description} />
	<meta property="og:title" content={title} />
	<meta property="og:description" content={description} />
	<meta name="twitter:card" content="summary_large_image" />
	<meta property="og:image" content="https://pridecraft.gay/{image}" />
</svelte:head>

<slot></slot>
