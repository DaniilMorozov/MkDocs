# Versioning

Documentation is versioned with [mike](https://github.com/jimporter/mike). Use the version selector in the header to switch between **1.0**, **2.0**, **2.1**, and **2.2**. The version selector in the header lets users switch between deployed versions.

## Prerequisites

- Set `site_url` in `mkdocs.yml` to your deployment URL (e.g. `https://username.github.io/repo/`).
- Deploy the site to a branch (e.g. `gh-pages`) that mike will use.

## Deploying a new version

Deploy the current docs as a new version and set the `latest` alias:

``` bash
mike deploy --push --update-aliases 1.0 latest
```

- `1.0` — version identifier (can be `2.0`, `dev`, etc.).
- `latest` — alias; visitors to the root URL are redirected to this version.

Deploy another version without changing the default:

``` bash
mike deploy --push 0.9
```

## Setting the default version

Redirect the site root to the version pointed to by an alias:

``` bash
mike set-default --push latest
```

After this, opening `site_url` will redirect to the `latest` version.

## Aliases

Use aliases for stable, dev, or specific releases:

``` bash
mike deploy --push --update-aliases 2.0 latest
mike deploy --push 2.0-beta dev
mike deploy --push 1.0 stable
```

Then set the default, for example:

``` bash
mike set-default --push latest
```

## Local development

Running `mkdocs serve` does not use mike; the version selector is populated only after deploying with mike. To test versioning, build and deploy at least one version to your branch.

## GitHub Pages: why the version selector is missing

The version selector **only appears if the site was deployed with mike**. If you only run `mkdocs build` and push the `site/` folder (or use a simple “build and deploy” workflow), GitHub Pages serves a single version and there is no `versions.json` — so the theme has nothing to show in the dropdown.

**Fix:** use the workflow in this repo (see below) or run mike locally and push the `gh-pages` branch.

## Deploy with GitHub Actions (recommended)

This repo includes `.github/workflows/deploy-versions.yml`, which:

1. Runs on every push to `main` (or manually via **Actions → Deploy docs (mike) → Run workflow**).
2. Builds the docs at tags **1.0**, **2.0**, **2.1**, and **2.2** and deploys them with mike to the `gh-pages` branch.
3. Sets **2.2** as the default version (alias `latest`).

**Required setup:**

1. In the repo: **Settings → Pages → Build and deployment**  
   - **Source:** Deploy from a branch  
   - **Branch:** `gh-pages` / `/ (root)`  
   - Save.

2. Push the workflow file and trigger a run (push to `main` or run the workflow manually). After it finishes, open `https://<user>.github.io/<repo>/` — the version selector should appear in the header.

## Deploy with mike locally

This repo has tags **1.0**, **2.0**, and **2.1**. To deploy them yourself:

``` bash
pip install -r requirements.txt
git checkout 1.0 && mike deploy 1.0 --push
git checkout 2.0 && mike deploy 2.0 --push
git checkout 2.1 && mike deploy 2.1 latest --push --update-aliases
git checkout main && mike set-default --push latest
```

Then set **GitHub Pages** to the `gh-pages` branch and open the site; the version selector will list 1.0, 2.0, and 2.1.
