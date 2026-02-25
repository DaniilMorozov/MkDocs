#!/usr/bin/env bash
# Build full site (en + pt) and PDFs for both languages.
# Requires: WeasyPrint deps (on macOS: brew install cairo pango gdk-pixbuf)

set -e
cd "$(dirname "$0")/.."
MKDOCS="${MKDOCS:-.venv/bin/mkdocs}"

echo "Building full site (HTML, no PDF)..."
"$MKDOCS" build

echo "Building English PDF..."
"$MKDOCS" build -f mkdocs.pdf-en.yml -d site_en

echo "Building Portuguese PDF..."
"$MKDOCS" build -f mkdocs.pdf-pt.yml -d site_pt

echo "Copying PDFs into site..."
mkdir -p site/pdf site/pt/pdf
cp site_en/pdf/documentation.pdf site/pdf/
cp site_pt/pdf/documentation.pdf site/pt/pdf/

echo "Cleaning up..."
rm -rf site_en site_pt

echo "Done. PDFs: site/pdf/documentation.pdf (EN), site/pt/pdf/documentation.pdf (PT)"
