import { defineMDSveXConfig as defineConfig } from 'mdsvex';

const config = defineConfig({
	extensions: ['.svelte.md', '.md', '.svx'],

	smartypants: {
		dashes: 'oldschool',
	},

	layout: {
		main: 'src/lib/layouts/main.svelte',
	},

	remarkPlugins: [],
	rehypePlugins: [],
});

export default config;
