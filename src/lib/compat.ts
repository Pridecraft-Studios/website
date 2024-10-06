/** Thin preprocessing wrapper */
import compatJson from '$lib/vars/compat';
import type Badge from '$lib/types';

const compat: Badge[] = [];

for (const k in compatJson) {
	const v = compatJson[k];
	const type = v.type || 'Compatible';

	compat.push({
		id: k,
		link: v.link,
		name: v.name,
		head: `${type} with`,
		title: v.title,
	});
}

// Since this is intended to be transparent,
export default compat;
