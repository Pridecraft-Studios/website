<!-- Copyright (c) 2023-2024 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	import Badge from '$lib/components/Badge.svelte';
	import social from '$lib/vars/social';
</script>

<aside>
	<h2>Socials</h2>

	<ul class="badges">
		{#each Object.entries(social) as [id, badge]}
			<li>
				<Badge {badge} {id} />
			</li>
		{/each}
	</ul>
</aside>
