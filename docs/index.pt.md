# Bem-vindo

Bem-vindo à documentação do projeto.

> **Versão 2.2** — Adicionados exemplos de media (imagem e vídeo).

## Começando

Adicione secções e páginas conforme necessário. A navegação é configurada em `mkdocs.yml` na secção `nav`.

## Estrutura

- **Início** — esta página
- **Download PDF** — obter a documentação em PDF em inglês ou português
- **Exemplos** — Hello World e mais exemplos de código em várias linguagens
- Adicione novas páginas em `docs/` e referencie-as em `mkdocs.yml`

## Exportar para PDF

Os PDFs são gerados em cada build. O PDF do idioma predefinido fica em `site/pdf/documentation.pdf`. Para gerar PDFs em inglês e português, execute:

``` bash
./scripts/build-pdf-all.sh
```

É necessário o WeasyPrint; no macOS instale primeiro as dependências do sistema:

``` bash
brew install cairo pango gdk-pixbuf
```
