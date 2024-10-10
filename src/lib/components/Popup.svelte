<script lang="ts">
	import { ChevronRightIcon } from 'svelte-feather-icons';

	export let label: string;
</script>

<div class="popup" tabindex="0" role="button" aria-pressed="false">
	<span>
		{label}
		<ChevronRightIcon class="inline" />
	</span>
	<slot />
</div>
