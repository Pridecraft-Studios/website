<script lang="ts">
	import Shield from './Shield.svelte';

	export let modid: string;
	export let label: string = 'Commits';
	export let alt: string = `${label} Commit Acitivty`;
</script>

<Shield
	href="https://git.pridecraft.gay/{modid}/commits"
	base="github/commit-activity/t/pridecraft-studios/{modid}"
	logo="github"
	{label}
	{alt}
	{...$$restProps}
/>
