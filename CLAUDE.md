# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this project is

A Quarto-based community blog for the [Tidyomics ecosystem](https://github.com/tidyomics). Posts are authored in `.qmd` (Quarto Markdown) files with R or Python code, rendered locally with frozen outputs committed to `_freeze/`, and deployed to GitHub Pages.

## Build commands

```bash
quarto render       # Build entire site → _site/
quarto check        # Validate configuration
```

In RStudio: open `tidyomicsBlog.Rproj`, then click **Build → Render Website**.

## Writing a blog post

Posts live under `posts/YYYY-MM-DD-slug/index.qmd`. Each post directory may also contain images and other static assets.

**Required front matter:**
```yaml
---
title: "Post Title"
author: "Author Name"
date: "YYYY-MM-DD"
description: "One-sentence summary shown in listings and RSS"
tags:
  - tag1
format:
  html:
    toc: true
execute:
  freeze: true
---
```

**Images:**
- Compress with `pngquant --ext .png --force my_figure.png` before committing.
- Every image needs alt text (use Quarto's `fig-alt` option for code-generated figures).
- You must have rights to publish any image included.

**Code execution (freeze):**
- Posts set `freeze: true`, so code is run locally and outputs cached.
- After rendering, commit everything changed inside `_freeze/` along with the `.qmd`.
- Do **not** commit generated HTML files.

**Licensing:** Text is CC-BY-4.0; code is BSD 3-Clause.

## Contribution workflow

1. Fork the repo and clone locally.
2. Create the post directory and `index.qmd`.
3. Render locally (`quarto render` or RStudio Build tab) to populate `_freeze/`.
4. Commit: the `.qmd`, any static files in the post directory, and `_freeze/` changes.
5. Open a PR — do not commit `_site/` or generated HTML.

## Repository layout

| Path | Purpose |
|------|---------|
| `posts/` | Blog posts (one subdirectory per post) |
| `posts/_metadata.yml` | Default metadata applied to all posts |
| `posts/bibliography.bib` | Shared bibliography |
| `posts-nolist/` | Posts excluded from the listing page |
| `_freeze/` | Cached computational outputs (committed) |
| `_site/` | Generated site (gitignored) |
| `_quarto.yml` | Site-wide Quarto configuration |
| `.github/workflows/` | CI: renders site, validates RSS, deploys to GitHub Pages |

## CI/CD

GitHub Actions (`.github/workflows/quarto-website.yml`) runs on every push and PR:
- Renders the site using the committed `_freeze/` cache (no code is re-executed in CI).
- Validates the RSS feed with `xmllint`.
- Deploys to GitHub Pages on push to `main`.
