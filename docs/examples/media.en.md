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
  <iframe
    src="https://www.youtube-nocookie.com/embed/dQw4w9WgXcQ?rel=0"
    title="Example video"
    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0;"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
  </iframe>
</div>

To embed your own video, replace the ID in the URL:  
`https://www.youtube-nocookie.com/embed/VIDEO_ID`

## Local image

Place image files in `docs/assets/` (or any folder under `docs/`) and reference them:

![Local asset](assets/example.svg)
