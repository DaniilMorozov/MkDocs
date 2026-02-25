# Descarregar PDF

Descarregue a documentação num único PDF. Escolha o idioma:

[Download PDF — English](../../pdf/documentation.pdf){ .md-button .md-button--primary }
[Download PDF — Português](../pdf/documentation.pdf){ .md-button }

!!! important "Dois PDFs exigem o script de build"
    Um `mkdocs build` ou `mkdocs serve` normal executa duas builds de idioma; o PDF é escrito no mesmo caminho em cada uma, por isso fica só **um** ficheiro (português) e a ligação PT pode dar 404. Para obter **ambos** os PDFs (EN e PT) e ligações de download a funcionar, execute primeiro o script e depois sirva o site gerado:

``` bash
./scripts/build-pdf-all.sh
./scripts/serve-with-pdfs.sh
```

    Depois abra o URL indicado (ex.: http://127.0.0.1:8000/repo/ ou http://127.0.0.1:8000/). Ambas as ligações de download funcionarão.

**Build único (ambos os PDFs, sem servidor):**

``` bash
./scripts/build-pdf-all.sh
```

**Apenas um PDF:** execute `ENABLE_PDF_EXPORT=1 .venv/bin/mkdocs build` ou `mkdocs serve` com essa variável; o ficheiro fica em `site/pdf/documentation.pdf`.
