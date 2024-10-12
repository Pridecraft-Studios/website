<!-- Copyright (c) 2023-2024 Ampflower
	 SPDX-License-Identifier: MIT
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-BADGE -->
<script lang="ts">
	import { error } from '@sveltejs/kit';
	import Badge from '$lib/components/Badge.svelte';
	export let badges: Badge[];
	if (!(badges instanceof Array)) {
		const err = `Bad badges value: '${badges}' == '${typeof badges}'`;
		console.trace(err);
		throw error(500, err);
	}
</script>

<div class="badges">
	{#each badges as badge}
		<Badge {badge} />
	{/each}
</div>
