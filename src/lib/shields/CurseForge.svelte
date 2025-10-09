<!-- Copyright (c) 2023-2025 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	import Shield from './Shield.svelte';

	export let modid: string;
	export let projectid: string;
	export let type: string = 'mc-mods';
	export let label: string = 'CurseForge';
	export let color: string = '#f16436';
	export let alt: string = `${label} Downloads`;
</script>

<Shield
	href="https://www.curseforge.com/minecraft/{type}/{modid}"
	base="curseforge/dt/{projectid}"
	logo="curseforge"
	{label}
	{color}
	{alt}
	{...$$restProps}
/>
