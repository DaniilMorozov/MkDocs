# Media: imagem e vídeo

Esta página mostra como incorporar uma imagem e um vídeo na documentação.

## Imagem

Imagem em Markdown (URL externa):

![Imagem de exemplo — placeholder](https://placehold.co/800x400/0d9488/white?text=Imagem+Documentação&font=roboto)

Com atributos opcionais (tamanho, alinhamento) usando a extensão `attr_list`:

![Placeholder teal](https://placehold.co/600x300/0d9488/white?text=Imagem+menor){ width="400" }

## Vídeo

Incorpore um vídeo do YouTube com um iframe. Use `youtube-nocookie.com` para mais privacidade (sem cookies até reproduzir):

<div class="video-wrapper" style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden;">
  <iframe
    src="https://www.youtube-nocookie.com/embed/dQw4w9WgXcQ?rel=0"
    title="Vídeo de exemplo"
    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0;"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
  </iframe>
</div>

Para incorporar o seu vídeo, substitua o ID no URL:  
`https://www.youtube-nocookie.com/embed/VIDEO_ID`

## Imagem local

Coloque ficheiros de imagem em `docs/assets/` (ou em qualquer pasta em `docs/`) e referencie-os:

![Recurso local](assets/example.svg)
