<script lang="ts">
	import Shield from './Shield.svelte';

	export let modid: string;
	export let type: string = 'project';
	export let label: string = 'Modrinth Downloads';
	export let color: string = '#1bd96a';
	export let alt: string = label;
</script>

<Shield
	href="https://modrinth.com/{type}/{modid}"
	base="modrinth/dt/{modid}"
	logo="modrinth"
	{label}
	{color}
	{alt}
	{...$$restProps}
/>
