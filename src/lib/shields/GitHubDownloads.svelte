<!-- Copyright (c) 2023-2024 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	import Shield from './Shield.svelte';

	export let modid: string;
	export let label: string = 'GitHub';
	export let alt: string = `${label} Downloads (all assets, all releases)`;
</script>

<Shield
	href="https://git.pridecraft.gay/{modid}/releases"
	base="github/downloads/pridecraft-studios/{modid}/total"
	logo="github"
	{label}
	{alt}
	{...$$restProps}
/>
