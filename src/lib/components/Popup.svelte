<script lang="ts">
	import { ChevronRightIcon } from 'svelte-feather-icons';

	export let label: string;
</script>

<div class="popup">
	<span>
		{label}
		<ChevronRightIcon class="inline" />
	</span>
	<slot />
</div>
