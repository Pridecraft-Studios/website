<!-- Copyright (c) 2023-2025 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	import { page } from '$app/stores';

	export let name: string;
	export let dir: string = $page.url.pathname.substring(1);

	// ['640x360', '1280x720', '1920x1080', '2560x1440', '3840x2160']
	export let sizes: string[] = ['640x360', '1920x1080', '3840x2160'];
	export let alt: string;
	export let order: string[] = ['avif', 'jpeg'];
	export let original: string = `${name}.webp`;

	// This seems nonsensical with the `string[]` constraint,
	// but Svelte can just shove in strings as it is.
	// This at least helps keep it ergonomic as a user.
	if (typeof order === 'string') {
		order = order.split(',');
	}

	if (typeof sizes === 'string') {
		sizes = sizes.split(',');
	}

	sizes = sizes.map((size) => size.split('x')).sort((a, b) => +b[0] - +a[0]);

	let srcset = '';

	if (order.length == 1) {
		for (let size of sizes) {
			for (let ext of order) {
				srcset += `/gallery/${dir}/${name}-${size[1]}p.${ext} ${size[0]}w,`;
			}
		}

		srcset = srcset.substring(0, srcset.length - 1);
	}

	let lastExt = order[order.length - 1];
	let lastSize = sizes.pop();

	export let fallback: string = `${name}-${lastSize[1]}p.${lastExt}`;
	export let fallbackSize: string[] = lastSize;

	if (typeof fallbackSize === 'string') {
		fallbackSize = fallbackSize.split('x');
	}

	if (fallback.indexOf('.') < 0) {
		fallback = `${name}.${fallback}`;
	}

	if (!original || typeof original !== 'string') {
		original = fallback;
	}

	alt = alt.replaceAll(/\s+/g, ' ');
</script>

<a href="/gallery/{dir}/{original}" title={alt}>
	{#if order.length == 1}
		<img
			{srcset}
			src="/gallery/{dir}/{fallback}"
			width={fallbackSize[0]}
			height={fallbackSize[1]}
			{alt}
			loading="lazy"
		/>
	{:else}
		<picture>
			{#each sizes as size}
				{#each order as ext}
					<source
						srcset="/gallery/{dir}/{name}-{size[1]}p.{ext}"
						media="(min-width: {size[0]}px)"
						width={size[0]}
						height={size[1]}
						type="image/{ext}"
					/>
				{/each}
			{/each}
			{#each order as ext}
				<source
					srcset="/gallery/{dir}/{name}-{lastSize[1]}p.{ext}"
					width={lastSize[0]}
					height={lastSize[1]}
					type="image/{ext}"
				/>
			{/each}
			<img
				src="/gallery/{dir}/{fallback}"
				width={fallbackSize[0]}
				height={fallbackSize[1]}
				{alt}
				loading="lazy"
			/>
		</picture>
	{/if}
</a>
