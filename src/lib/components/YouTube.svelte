<!-- Copyright (c) 2023-2024 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
	export let id: string;
	export let title: string;
	export let controls: string = '0';
	export let src: string = `https://www.youtube-nocookie.com/embed/${id}?controls=${controls}`;
	export let allow: string = 'clipboard-write; encrypted-media; picture-in-picture; web-share';
	export let referrerpolicy: string = 'strict-origin-when-cross-origin';
</script>

<a href="https://youtu.be/{id}" class="video" {title}>
	<!-- They took the gay away... -->
	<img src="/assets/youtube-noiframe.avif" alt={title} hidden loading="lazy" />
	<iframe
		{src}
		{title}
		{allow}
		{referrerpolicy}
		allowfullscreen
		loading="lazy"
		width="640"
		height="360"
	>
	</iframe>
</a>
