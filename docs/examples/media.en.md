# Media: image and video

This page shows how to embed an image and a video in the documentation.

## Image

Standard Markdown image (external URL):

![Example image — placeholder](https://placehold.co/800x400/0d9488/white?text=Documentation+Image&font=roboto)

With optional attributes (size, alignment) using the `attr_list` extension:

![Teal placeholder](https://placehold.co/600x300/0d9488/white?text=Smaller+image){ width="400" }

## Video

Embed a YouTube video with an iframe. Use `youtube-nocookie.com` for better privacy (no cookies until playback):

<div class="video-wrapper" style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden;">
<iframe width="560" height="315" src="https://www.youtube.com/embed/dQw4w9WgXcQ?si=BcYSlzJYKuroXGwE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>

## Local image 

Place image files in `docs/assets/` (or any folder under `docs/`) and reference them:

![Local asset](../assets/example.svg)
