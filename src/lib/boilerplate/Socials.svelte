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
