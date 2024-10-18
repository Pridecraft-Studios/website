<!-- Copyright (c) 2023-2024 Pridecraft Studios & contributors
	 All Rights Reserved -->
<script lang="ts">
	import Rosette from './Rosette.svelte';
	import Link from './LinkListEntry.svelte';
	export let id: string;
	export let href: string = '/' + id;
	export let type: string;
</script>

<Link {href} class="logo">
	<Rosette {type} {id}><slot /></Rosette>
</Link>
