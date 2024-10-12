<!-- Copyright (c) 2023-2024 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	import { error } from '@sveltejs/kit';
	export let name: string;
	export let size: string[] = ['1920', '1080'];
	export let alt: string;
	export let suffix: string = '';
	export let order: string[] = ['avif', 'jpeg'];

	// This seems nonsensical with the `string[]` constraint,
	// but Svelte can just shove in strings as it is.
	// This at least helps keep it ergonomic as a user.
	if (typeof size === 'string') {
		size = size.split('x');
	}

	export let width: string = size[0];
	export let height: string = size[1];

	if (typeof order === 'string') {
		order = order.split(',');
	}

	let last = order.pop();

	if (!last) {
		throw error('No such {order}');
	}

	let lastExt = order[order.length - 1];

	export let fallback: string = `${name}.${lastExt}`;
	export let original: string = `${name}.webp`;

	if (!fallback || typeof fallback !== 'string') {
		fallback = `${name}${suffix}.${last}`;
	} else if (fallback.indexOf('.') < 0) {
		fallback = `${name}.${fallback}`;
	}

	if (original && typeof original === 'string') {
		if (original.indexOf('.') < 0) {
			original = `${name}.${original}`;
		}
	} else {
		original = fallback;
	}

	alt = alt.replaceAll(/\s+/g, ' ');
</script>

<a href="/gallery/{original}" title={alt}>
	<picture>
		{#each order as ext}
			<source srcset="/gallery/{name}{suffix}.{ext} {width}w" type="image/{ext}" />
		{/each}
		<img src="/gallery/{name}{suffix}.{last}" {width} {height} {alt} loading="lazy" />
	</picture>
</a>
