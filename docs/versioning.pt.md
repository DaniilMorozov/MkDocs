# Versionamento

A documentação é versionada com [mike](https://github.com/jimporter/mike). Use o seletor de versão no cabeçalho para alternar entre **1.0**, **2.0**, **2.1** e **2.2**. O seletor de versão no cabeçalho permite alternar entre as versões publicadas.

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

## GitHub Pages: por que não aparece o seletor de versão

O seletor de versão **só aparece se o site foi publicado com mike**. Se apenas executar `mkdocs build` e enviar a pasta `site/` (ou usar um workflow simples de build e deploy), o GitHub Pages serve uma única versão e não existe `versions.json` — por isso o tema não mostra nada no menu.

**Solução:** usar o workflow deste repositório (ver abaixo) ou executar mike localmente e fazer push da branch `gh-pages`.

## Publicar com GitHub Actions (recomendado)

Este repositório inclui `.github/workflows/deploy-versions.yml`, que:

1. É executado em cada push para `main` (ou manualmente em **Actions → Deploy docs (mike) → Run workflow**).
2. **Obtém todas as tags** do repositório (`git tag -l`), ordena-as por versão e publica cada uma com mike na branch `gh-pages`. Não é preciso editar o workflow ao adicionar uma nova versão.
3. Define a **tag mais recente** (por ordem de versão) como versão predefinida (alias `latest`).

**Configuração necessária:**

1. **Enviar as tags** para o workflow as poder publicar: `git push origin --tags`. Novas tags são usadas na próxima execução.
2. No repositório: **Settings → Pages → Build and deployment**
   - **Source:** Deploy from a branch  
   - **Branch:** `gh-pages` / `/ (root)`  
   - Guardar.
3. Fazer push do ficheiro do workflow e disparar uma execução (push para `main` ou executar o workflow manualmente). Depois de terminar, abrir `https://<user>.github.io/<repo>/` — o seletor de versão lista todas as tags publicadas.

## Publicar com mike localmente

Este repositório tem as tags **1.0**, **2.0** e **2.1**. Para as publicar manualmente:

``` bash
pip install -r requirements.txt
git checkout 1.0 && mike deploy 1.0 --push
git checkout 2.0 && mike deploy 2.0 --push
git checkout 2.1 && mike deploy 2.1 latest --push --update-aliases
git checkout main && mike set-default --push latest
```

Depois configurar **GitHub Pages** para a branch `gh-pages` e abrir o site; o seletor de versão mostrará 1.0, 2.0 e 2.1.
