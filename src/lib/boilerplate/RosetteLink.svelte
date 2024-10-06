<script lang="ts">
	import Rosette from './Rosette.svelte';
	export let id: string;
	export let href: string = '/' + id;
	export let type: string;
</script>

<a {href} class="logo">
	<Rosette {type} {id}><slot /></Rosette>
</a>
