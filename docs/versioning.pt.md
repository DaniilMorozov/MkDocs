# Versionamento

A documentação é versionada com [mike](https://github.com/jimporter/mike). O seletor de versão no cabeçalho permite alternar entre as versões publicadas.

## Pré-requisitos

- Definir `site_url` em `mkdocs.yml` com o URL de publicação (ex.: `https://username.github.io/repo/`).
- Publicar o site numa branch (ex.: `gh-pages`) que o mike utilizará.

## Publicar uma nova versão

Publicar a documentação atual como nova versão e definir o alias `latest`:

``` bash
mike deploy --push --update-aliases 1.0 latest
```

- `1.0` — identificador da versão (pode ser `2.0`, `dev`, etc.).
- `latest` — alias; quem aceder ao URL raiz é redirecionado para esta versão.

Publicar outra versão sem alterar a predefinida:

``` bash
mike deploy --push 0.9
```

## Definir a versão predefinida

Redirecionar a raiz do site para a versão associada a um alias:

``` bash
mike set-default --push latest
```

Assim, ao abrir `site_url` o utilizador é redirecionado para a versão `latest`.

## Aliases

Use aliases para versões estáveis, de desenvolvimento ou releases específicos:

``` bash
mike deploy --push --update-aliases 2.0 latest
mike deploy --push 2.0-beta dev
mike deploy --push 1.0 stable
```

Depois defina a predefinida, por exemplo:

``` bash
mike set-default --push latest
```

## Desenvolvimento local

Ao executar `mkdocs serve` o mike não é usado; o seletor de versão só é preenchido após publicar com mike. Para testar o versionamento, faça build e publique pelo menos uma versão na sua branch.
