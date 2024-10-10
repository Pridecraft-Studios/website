<script lang="ts">
	import { ChevronRightIcon } from 'svelte-feather-icons';

	export let label: string;
	export let id: string = null;
</script>

<div class="popup" tabindex="0" role="button" aria-pressed="false" {id}>
	<span>
		{label}
		<ChevronRightIcon class="inline" />
	</span>
	<slot />
</div>
