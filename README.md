# Sung-Min Park — Portfolio

[![Jekyll](https://img.shields.io/badge/Jekyll-4.4-red.svg)](https://jekyllrb.com/)
[![Ruby](https://img.shields.io/badge/Ruby-3.3.6-red.svg)](https://www.ruby-lang.org/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A minimalist portfolio site for quantum physics and machine learning research, built with Jekyll and a fully custom design system.

🔗 **Live Site**: [sungmin-park-dev.github.io](https://sungmin-park-dev.github.io)

---

## Design Philosophy

The visual language draws on **emergence** (창발성) — emergent phenomena in physics, where simple elements interact to create complex, unpredictable beauty.

- **OLED Black / Indigo-Black** — the depth of space
- **Stellar Blue Glow** (`rgba(0, 200, 255)`) — ideas shining in darkness
- **Glassmorphism** — layered information with depth
- **Ultra-Light Typography** (100–200 weight) — minimal visual noise

📖 Full design philosophy in [`DESIGN.md`](DESIGN.md)

---

## Project Structure

```
sungmin-park-dev.github.io/
├── _layouts/               # HTML templates
│   ├── base.html           # HTML shell (head, body)
│   ├── minimal.html        # Homepage layout
│   ├── custom-page.html    # Tab pages layout
│   └── post.html           # Individual content pages
│
├── _includes/              # Reusable Liquid partials
│   ├── nav.html            # Shared navigation
│   └── project-card.html   # Project card component
│
├── _tabs/                  # Main navigation pages
│   ├── projects.md
│   └── about.md            # Pulls data from _data/profile.yml
│
├── _data/
│   ├── profile.yml         # Personal info (single source of truth)
│   ├── theme_dark.yml      # Dark mode design tokens
│   └── theme_light.yml     # Light mode design tokens
│
├── _projects/              # Project collection
├── _notes/                 # Notes collection (not linked; drafts for a future separate knowledge-garden site)
├── _readings/              # Reading collection (not linked; drafts for a future separate knowledge-garden site)
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
---
```

### Add a Note

Create `_notes/[category]/[note-name].md`:

```yaml
---
title: "Note Title"
date: 2025-01-01 00:00:00 +0900
subcategory: physics   # physics | machine-learning | computation
tags: ["tensor-networks"]
math: true
toc: true
---
```

### Add a Reading

Create `_readings/papers/[name].md`:

```yaml
---
title: "Paper Review: Title"
date: 2025-01-01 00:00:00 +0900
subcategory: papers   # papers | tech | perspectives
tags: ["quantum"]
math: true
toc: true
---
```

---

## Customization

### Personal Info

Edit `_data/profile.yml` — single source of truth for name, affiliation, social links, and research interests.

### Design Tokens

Edit `_data/theme_dark.yml` or `_data/theme_light.yml` — no SCSS knowledge required.

---

## Tech Stack

| Category | Technology |
|----------|-----------|
| Generator | Jekyll 4.4 |
| Styling | SCSS (`@use` module system) |
| Icons | FontAwesome 6 |
| Comments | Utterances (GitHub Issues) |
| Hosting | GitHub Pages |
| Plugins | `jekyll-seo-tag`, `jekyll-sitemap`, `jekyll-feed`, `jekyll-paginate` |

---

## Build & Deploy

```bash
# Local build (no deprecation warnings)
LANG=en_US.UTF-8 bundle exec jekyll build

# Deploy: push to main branch → GitHub Actions auto-deploys
git push origin main

# HTML validation
bundle exec htmlproofer _site --disable-external
```

---

## License

MIT License — feel free to use this theme for your own portfolio.
