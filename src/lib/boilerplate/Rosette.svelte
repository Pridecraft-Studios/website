<!-- Copyright (c) 2023-2024 Pridecraft Studios & contributors
	 All Rights Reserved -->
<script lang="ts">
	export let id: string;
	export let type: string;

	// GudF helped optimise the logo itself further :3c
</script>

<svg width="48" height="48" class="rosette {type}" aria-labelledby={id} hidden>
	<use href="/logo.svg#a" />
</svg>
<span {id}><slot /></span>
