<!-- Copyright (c) 2023-2025 Ampflower
	 SPDX-License-Identifier: MIT
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-BADGE -->
<script lang="ts">
	export let id: string;
	export let link: string;
	export let rel: string | null;
	export let head: string;
	export let name: string;

	export let ext: string = 'webp';
	export let logo: string = `${id}.${ext}`;
	export let src: string = `/assets/logos/${logo}`;
	export let title: string = `${head} ${name}`;
</script>

<!-- Fun fact: Browsers hate putting divs in anchors. So much for no semantics. -->
<!-- Note: `hidden` on image and `reader-only` is to provide a sensible no-CSS/reader fallback. -->
<a class="badge" {rel} href={link} {title} {id}>
	<span>
		<img {src} width="48" height="48" aria-labelledby="{id}-label" alt="" hidden />
		<span id="{id}-label">{head} <b>{name}</b><span class="reader-only">. </span></span>
	</span>
</a>
