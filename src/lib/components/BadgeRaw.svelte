<script lang="ts">
  export let id: string;
  export let title: string | null;
  export let link: string;
  export let alt: string | null;
  export let rel: string | null;
  export let head: string;
  export let name: string;

  // Set `alt` automatically when applicable.
  if (!alt) {
    alt = name + "'s logo";
  }

  // Set `title` automatically when applicable.
  if (!title) {
    title = head + ' ' + name;
  }
</script>

<a rel="{rel}" href="{link}" title="{title}" id="{id}" class="badge">
  <div>
    <img src="/assets/logos/{id}.webp" aria-labelledby="{id}-label" alt="{alt}"/>
    <span id="{id}-label">{head}<br/><b>{name}</b></span>
  </div>
</a>