# Versioning

Documentation is versioned with [mike](https://github.com/jimporter/mike). The version selector in the header lets users switch between deployed versions.

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
