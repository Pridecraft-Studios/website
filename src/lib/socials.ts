import socials from './vars/social';

const map = {
	website: 'Website',
	github: 'GitHub',
	fediverse: 'Fediverse',
};

for (const [k, v] of Object.entries(socials)) {
	map[k] = v.name;
}

export default map;
