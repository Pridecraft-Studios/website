<!-- Copyright (c) 2023-2025 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	import Shield from './Shield.svelte';

	export let modid: string;
	export let type: string = 'project';
	export let label: string = 'Modrinth';
	export let color: string = '#1bd96a';
	export let alt: string = `${label} Downloads`;
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
