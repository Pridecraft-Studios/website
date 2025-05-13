<script lang="ts">
	// audit: The use of {@html} is from trusted build data; the risk of an exploit requires
	// pushing to the repository itself, which is, generally, not possible, and would be higher impact than
	// this alone would ever be.

	// If this ever changes, ensure that the provided HTML is purified before hitting the end DOM.

	/* eslint svelte/no-at-html-tags: "off" */

	import { page } from '$app/stores';

	import devMap from '$lib/vars/devs.yaml';
	import SocialsMap from '$lib/socials';

	export let filter: string = $page.url.pathname.substring(1);
	export let type: string;

	let devs;

	if (filter && filter !== '') {
		devs = {};

		for (const [key, value] of Object.entries(devMap)) {
			if (value.projects && value.projects.indexOf(filter) >= 0) {
				devs[key] = value;
			}
		}
	} else {
		devs = devMap;
	}
</script>

<ul class="developers {type}">
	{#each Object.entries(devs) as [key, value]}
		<li class={key}>
			<span>
				<span class="heading">
					<img
						src={value.avatar}
						width="96"
						height="96"
						loading="lazy"
						aria-labelledby={key}
						alt=""
						hidden
					/>
					<h3 id={key}>{key}</h3>
					<small class="roles">
						<!-- https://github.com/sveltejs/svelte/issues/7473#issuecomment-1606105476 is frankly clever -->
						{#each value.roles as role, i}
							{#if i > 0},
							{/if}<i title={role}>{role}</i>
						{/each}
					</small>
					<small class="links">
						{#each Object.entries(value.socials) as [name, link], i}
							{#if i > 0},
							{/if}<a rel="me" href={link} title={SocialsMap[name]}>{name}</a>
						{/each}
					</small>
				</span>
				<p class="bio">{@html value.bio ?? ''}</p>
				{#if value.socials}
					<p class="links">
						{#each Object.entries(value.socials) as [name, link], i}
							{#if i > 0},
							{/if}<a rel="me" href={link} title={SocialsMap[name]}>{name}</a>
						{/each}
					</p>
				{/if}
			</span>
		</li>
	{/each}
</ul>
