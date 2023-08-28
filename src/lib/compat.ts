/** Thin preprocessing wrapper */
import compatJson from '$lib/vars/compat';
import type Badge from '$lib/types';

let compat: Badge[] = [];

for(let k in compatJson) {
	let v = compatJson[k];
	let type = v.type || 'Compatible';

	compat.push({
		id: k,
		link: v.link,
		name: v.name,
		head: `${type} with`,
		title: v.title
	});
}

// Since this is intended to be transparent,
export default compat;