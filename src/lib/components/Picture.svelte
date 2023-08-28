<script lang="ts">
  export let name: string;
  export let size: string;
  export let alt: string;
  export let jxlFirst: boolean;


</script>

<picture>
  {#if jxlFirst}
  <source srcset="/assets/img/{name}-lossy.jxl {size}" type="image/jxl"/>
  <source srcset="/assets/img/{name}-lossy.avif {size}" type="image/avif"/>
  {:else}
  <source srcset="/assets/img/{name}-lossy.avif {size}" type="image/avif"/>
  <source srcset="/assets/img/{name}-lossy.jxl {size}" type="image/jxl"/>
  {/if}
  <img src="/assets/img/{name}-lossy.webp" alt="{alt}" loading="lazy"/>
</picture>