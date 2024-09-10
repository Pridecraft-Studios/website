<script lang="ts">
	export let name: string;
	export let size: string;
	export let alt: string;
	export let jxlFirst: boolean = false;
</script>

<a href="/assets/img/{name}.webp" title={alt}>
	<picture>
		{#if jxlFirst}
			<source srcset="/assets/img/{name}-lossy.jxl {size}" type="image/jxl" />
			<source srcset="/assets/img/{name}-lossy.avif {size}" type="image/avif" />
		{:else}
			<source srcset="/assets/img/{name}-lossy.avif {size}" type="image/avif" />
			<source srcset="/assets/img/{name}-lossy.jxl {size}" type="image/jxl" />
		{/if}
		<img src="/assets/img/{name}-lossy.webp" {alt} loading="lazy" />
	</picture>
</a>
