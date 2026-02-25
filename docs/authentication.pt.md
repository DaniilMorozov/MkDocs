# Autenticação

A documentação está protegida com uma palavra-passe. Ao abrir qualquer página, será pedido que introduza a palavra-passe para desencriptar e ver o conteúdo.

## Funcionamento

- O conteúdo é encriptado no momento do build (AES). Apenas utilizadores com a palavra-passe podem desencriptá-lo no browser.
- A palavra-passe **não** fica no repositório. É lida a partir de `passwords.yml` (local) ou do secret `DOCS_PASSWORD` (GitHub Actions).

## Desenvolvimento local

1. Copie o ficheiro de exemplo e defina a sua palavra-passe:
   ``` bash
   cp passwords.yml.example passwords.yml
   ```
2. Edite `passwords.yml` e substitua `changeme` pela sua palavra-passe em `_global:`.
3. Execute `mkdocs serve` ou `mkdocs build` como habitualmente. O site ficará protegido com essa palavra-passe.

## GitHub Actions (publicação)

1. No repositório: **Settings → Secrets and variables → Actions**.
2. Adicione um secret com o nome **DOCS_PASSWORD** e o valor da palavra-passe para o site publicado.
3. Em cada deploy, o workflow cria `passwords.yml` a partir deste secret. Se o secret não estiver definido, é usada a palavra-passe predefinida `docs` (defina o secret para proteção real).

## Partilhar a palavra-passe

Partilhe a palavra-passe apenas com quem deve aceder à documentação. Não existe “login” separado — a mesma palavra-passe desbloqueia todas as páginas protegidas (e pode ser guardada no browser na sessão se “remember keys” estiver ativo).
