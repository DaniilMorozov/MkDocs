# Authentication

The documentation is protected with a password. When you open any page, you will be asked to enter the password to decrypt and view the content.

## How it works

- Content is encrypted at build time (AES). Only users who have the password can decrypt it in the browser.
- The password is **not** stored in the repository. It is read from `passwords.yml` (local) or from the `DOCS_PASSWORD` secret (GitHub Actions).

## Local development

1. Copy the example file and set your password:
   ``` bash
   cp passwords.yml.example passwords.yml
   ```
2. Edit `passwords.yml` and replace `changeme` with your password under `_global:`.
3. Run `mkdocs serve` or `mkdocs build` as usual. The site will be protected with that password.

## GitHub Actions (deploy)

1. In the repo: **Settings → Secrets and variables → Actions**.
2. Add a secret named **DOCS_PASSWORD** with the password you want for the published site.
3. On each deploy, the workflow creates `passwords.yml` from this secret. If the secret is not set, the default password `docs` is used (set the secret for real protection).

## Sharing the password

Share the password only with people who should access the docs. There is no separate “login” — the same password unlocks all protected pages (and is remembered in the browser for the session if “remember keys” is enabled).
