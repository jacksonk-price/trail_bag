<script>
    export let imageSrcs;

    import { LuminousGallery } from 'luminous-lightbox';
    import { onMount } from 'svelte';

    onMount(() => {
        new LuminousGallery(document.querySelectorAll(".gallery"));
    });
</script>

<div class="image-grid">
    {#each imageSrcs as src (src)}
        <a class="gallery" href={src}>
            <img src={src} alt="poo{src}" loading="lazy">
        </a>
    {/each}
</div>

<style>
    .image-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
        gap: 10px;
        padding: 1rem 0;
        grid-template-rows: masonry;
    }

    .image-grid img {
        width: 100%;
        height: auto;
        object-fit: cover;
        border-radius: 8px;
    }
</style>