<script lang="ts">
	export let id: string;
	export let title: string;
</script>

<a href="https://youtu.be/{id}" class="video" {title}>
	<!-- They took the gay away... -->
	<img src="/assets/youtube-noiframe.avif" alt={title} hidden loading="lazy" />
	<iframe
		src="https://www.youtube-nocookie.com/embed/{id}?controls=0"
		{title}
		allow="clipboard-write; encrypted-media; picture-in-picture; web-share"
		referrerpolicy="strict-origin-when-cross-origin"
		allowfullscreen
		loading="lazy"
		width="640"
		height="360"
	>
	</iframe>
</a>
