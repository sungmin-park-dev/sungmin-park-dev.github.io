# Sung-Min Park — Portfolio

[![Jekyll](https://img.shields.io/badge/Jekyll-4.4-red.svg)](https://jekyllrb.com/)
[![Ruby](https://img.shields.io/badge/Ruby-3.3.6-red.svg)](https://www.ruby-lang.org/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A minimalist portfolio site for quantum physics and machine learning research, built with Jekyll and a fully custom design system.

🔗 **Live Site**: [sungmin-park-dev.github.io](https://sungmin-park-dev.github.io)

---

## Design Philosophy

The portfolio uses a restrained editorial system that keeps attention on the
work itself.

- **Project type first** — research implementations and software systems form
  the primary structure
- **Status second** — maturity is visible without controlling the page order
- **Typographic hierarchy** — scale and spacing identify the leading project
  in each group
- **Neutral surfaces, one blue accent** — no decorative gradients or glow

📖 Full design philosophy in [`DESIGN.md`](DESIGN.md)

---

## Project Structure

```
sungmin-park-dev.github.io/
├── _layouts/               # HTML templates
│   ├── base.html           # HTML shell (head, body)
│   ├── custom-page.html    # Tab pages layout
│   └── post.html           # Individual content pages
│
├── _includes/              # Reusable Liquid partials
│   ├── nav.html            # Shared navigation
│   └── project-card.html   # Project entry component
│
├── _tabs/                  # Main navigation pages
│   └── about.md            # Pulls data from _data/profile.yml
│
├── _data/
│   ├── profile.yml         # Personal info (single source of truth)
│   ├── theme_dark.yml      # Dark mode design tokens
│   └── theme_light.yml     # Light mode design tokens
│
├── _projects/              # Project collection
├── _archive/               # Inactive, restorable template features
│
└── _sass/emergence/        # Custom design system (SCSS @use module system)
    ├── _variables.scss
    ├── _base.scss
    ├── _typography.scss
    ├── _components.scss
    ├── _navigation.scss
    └── pages/
```

---

## Quick Start

### Prerequisites

- Ruby 3.3.6 (via rbenv)
- Bundler

### Installation

```bash
git clone https://github.com/sungmin-park-dev/sungmin-park-dev.github.io.git
cd sungmin-park-dev.github.io
bundle install
LANG=en_US.UTF-8 bundle exec jekyll serve --livereload
```

Visit `http://localhost:4000`

---

## Adding Content

### Add a Project

Create `_projects/[project-name]/index.md`:

```yaml
---
title: "Project Title"
description: "Brief description"
categories: [Projects]
icon: fas fa-calculator
tags: ["Tag1", "Tag2"]
link: "#"
order: 1
status: planned   # planned | in-progress | completed
project_type: research   # research | systems
---
```

---

## Customization

### Personal Info

Edit `_data/profile.yml` — single source of truth for name, affiliation, social links, and research interests.

### Design Tokens

Edit `_data/theme_dark.yml` or `_data/theme_light.yml` — no SCSS knowledge required.

---

## Archived Template Features

Inactive Notes, Readings, blog, project filtering, Dev Container, theme-sync,
and legacy Chirpy asset features are kept under
[`_archive/legacy-template-features/`](_archive/legacy-template-features/) with
restoration instructions. They are excluded from the generated site.

---

## Tech Stack

| Category | Technology |
|----------|-----------|
| Generator | Jekyll 4.4 |
| Styling | SCSS (`@use` module system) |
| Icons | FontAwesome 6 |
| Hosting | GitHub Pages |
| Plugins | `jekyll-seo-tag`, `jekyll-sitemap` |

---

## Build & Deploy

```bash
# Local build (use the repository's Ruby version)
PATH=/Users/david/.rbenv/versions/3.3.6/bin:$PATH \
LANG=en_US.UTF-8 \
bundle exec jekyll build

# Deploy: push to main branch → GitHub Actions auto-deploys
git push origin main

# HTML validation
PATH=/Users/david/.rbenv/versions/3.3.6/bin:$PATH \
bundle exec htmlproofer _site --disable-external
```

---

## License

MIT License — feel free to adapt the site code for your own portfolio.
