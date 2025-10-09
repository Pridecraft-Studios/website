<!-- Copyright (c) 2023-2025 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
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
