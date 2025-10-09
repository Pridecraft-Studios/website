<!-- Copyright (c) 2023-2025 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	export let href: string = null;
	export let base: string;

	export let logo: string = null;
	export let label: string = null;
	export let color: string = null;
	export let style: string = 'for-the-badge';

	let src = `https://img.shields.io/${base}?`;

	if (logo) {
		src += `logo=${encodeURIComponent(logo)}&`;
	}
	if (label) {
		src += `label=${encodeURIComponent(label)}&`;
	}
	if (color) {
		src += `color=${encodeURIComponent(color)}&`;
	}
	if (style) {
		src += `style=${encodeURIComponent(style)}&`;
	}

	export let alt: string = label;
	export let title: string = alt;
</script>

{#if href}
	<a {href} {title}><img {src} {alt} {...$$restProps} /></a>
{:else}
	<img {src} {alt} {title} {...$$restProps} />
{/if}
