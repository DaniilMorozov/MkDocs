# Download PDF

Download the documentation as a single PDF. Choose your language:

[Download PDF — English](../pdf/documentation.pdf){ .md-button .md-button--primary }
[Download PDF — Português](../pt/pdf/documentation.pdf){ .md-button }

!!! important "Two PDFs require the build script"
    A normal `mkdocs build` or `mkdocs serve` runs two language builds; the PDF is written to the same path each time, so you only get **one** file (Portuguese) and the PT link can 404. To get **both** PDFs (EN and PT) and working download links, run the script first, then serve the built site:

``` bash
./scripts/build-pdf-all.sh
./scripts/serve-with-pdfs.sh
```

    Then open the URL shown (e.g. http://127.0.0.1:8000/repo/ or http://127.0.0.1:8000/). Both download buttons will work.

**One-off build (both PDFs, no server):**

``` bash
./scripts/build-pdf-all.sh
```

**Single PDF only:** run `ENABLE_PDF_EXPORT=1 .venv/bin/mkdocs build` or `mkdocs serve` with that env set; the file is at `site/pdf/documentation.pdf`.
