# Welcome

Welcome to the project documentation.

## Getting started

Add sections and pages as needed. Navigation is configured in `mkdocs.yml` under the `nav` section.

## Structure

- **Home** — this page
- **Download PDF** — get the docs as PDF in English or Portuguese
- **Examples** — Hello World and more code samples in multiple languages
- Add new pages under `docs/` and reference them in `mkdocs.yml`

## Export to PDF

PDFs are generated on every build. The default-language PDF is at `site/pdf/documentation.pdf`. To build PDFs for both English and Portuguese, run:

``` bash
./scripts/build-pdf-all.sh
```

WeasyPrint is required; on macOS install system dependencies first:

``` bash
brew install cairo pango gdk-pixbuf
```
