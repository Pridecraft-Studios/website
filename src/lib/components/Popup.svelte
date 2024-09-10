<script lang="ts">
	import { ChevronRightIcon } from 'svelte-feather-icons';

	export let id: string;
	export let label: string;
</script>

<div class="popup">
	<input {id} type="checkbox" hidden />
	<label for={id}>
		{label}
		<ChevronRightIcon class="inline" />
	</label>
	<slot />
</div>
