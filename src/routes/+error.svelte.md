---
layout: main
title: "\0`${$page.status}'d :3c`"
description: "\0$page.error.message"
image: /assets/lost.webp
---
<!-- Copyright (c) 2023-2025 Pridecraft Studios & contributors
	 SPDX-License-Identifier: CC-BY-SA-4.0
	 https://git.pridecraft.gay/website/blob/HEAD/LICENSE-CC-BY-SA-4.0 -->
<script lang="ts">
    import {page} from '$app/stores';
</script>

<div class="error">

# {$page.status}'d :3c

![A bii that has lost its way on the internet.](/assets/lost.webp)

It appears you've gotten lost with a '{$page.error.message}' error. [Hop](/frog) back to the [main page](/)?

</div>
