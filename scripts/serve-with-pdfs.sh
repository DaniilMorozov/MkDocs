#!/usr/bin/env bash
# Build site with both EN and PT PDFs, then serve the site locally.
# Use this instead of "mkdocs serve" when you need both PDF download links to work.
# Requires: WeasyPrint deps (on macOS: brew install cairo pango gdk-pixbuf)

set -e
cd "$(dirname "$0")/.."
SCRIPT_DIR="$(pwd)"

echo "Building site with both PDFs..."
./scripts/build-pdf-all.sh

# If site_url has a path (e.g. /repo/), we must serve under that path.
# Extract path from site_url (simple grep); default to /.
BASE_PATH="/"
if grep -q 'site_url:.*github.io.*/' mkdocs.yml 2>/dev/null; then
  BASE_PATH=$(grep 'site_url:' mkdocs.yml | sed -n 's/.*https:\/\/[^/]*\/\([^/]*\)\/.*/\/\1/p')
  [ -z "$BASE_PATH" ] && BASE_PATH="/"
fi

if [ "$BASE_PATH" != "/" ]; then
  echo "Serving under path $BASE_PATH (from site_url)"
  PREVIEW_DIR=".preview"
  rm -rf "$PREVIEW_DIR"
  mkdir -p "$PREVIEW_DIR$BASE_PATH"
  cp -r site/. "$PREVIEW_DIR$BASE_PATH/"
  cd "$SCRIPT_DIR/$PREVIEW_DIR"
  echo "Open: http://127.0.0.1:8000$BASE_PATH"
else
  echo "Serving at root"
  cd "$SCRIPT_DIR/site"
fi

echo "Press Ctrl+C to stop."
exec python3 -m http.server 8000
