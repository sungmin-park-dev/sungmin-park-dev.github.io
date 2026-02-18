# emergence

[![Jekyll](https://img.shields.io/badge/Jekyll-4.3-red.svg)](https://jekyllrb.com/)
[![Ruby](https://img.shields.io/badge/Ruby-3.3.8-red.svg)](https://www.ruby-lang.org/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

**emergence** is a minimalist portfolio site for quantum physics and machine learning research, built with Jekyll and a custom design system.

🔗 **Live Site**: [sungmin-park-dev.github.io](https://sungmin-park-dev.github.io)

---

## 🎨 Design Philosophy

**emergence** (창발성) represents the core concept of many-body physics — where simple elements interact to create complex, unpredictable beauty.

- **OLED Black Background** (`#000000`) — the depth of space, infinite possibilities
- **Cyan Glow** (`rgba(0, 255, 255)`) — ideas shining in darkness
- **Glassmorphism** — layered information with depth
- **Ultra-Light Typography** (100-200 weight) — minimal visual noise

📖 Full design philosophy in [`DESIGN.md`](DESIGN.md)

---

## 📂 Project Structure

```
emergence/
├── _layouts/           # HTML templates
│   ├── base.html       # HTML shell (head, body)
│   ├── minimal.html    # Homepage layout
│   ├── custom-page.html # Tab pages layout
│   └── post.html       # Individual content pages
│
├── _tabs/              # Main navigation pages
│   ├── projects.md     # Projects grid
│   ├── notes.md        # Notes archive
│   ├── readings.md     # Reading list
│   └── about.md        # About page
│
├── _projects/          # Project collection
│   └── [project-name]/
│       └── index.md    # Project details
│
├── _notes/             # Notes collection
│   ├── physics/
│   ├── machine-learning/
│   └── quantum-computing/
│
├── _readings/          # Reading collection
│   ├── papers/
│   └── tech/
│
├── _sass/emergence/    # Design system SCSS
│   ├── _variables.scss
│   ├── _base.scss
│   ├── _typography.scss
│   ├── _components.scss
│   ├── _navigation.scss
│   └── pages/          # Page-specific styles
│
└── assets/css/
    └── emergence.scss  # Main SCSS entry point
```

---

## 🚀 Quick Start

### Prerequisites

- Ruby 3.3.8+ (managed with rbenv)
- Bundler

### Installation

```bash
# Clone the repository
git clone https://github.com/sungmin-park-dev/sungmin-park-dev.github.io.git
cd sungmin-park-dev.github.io

# Install dependencies
bundle install

# Serve locally with live reload
bundle exec jekyll serve --livereload
```

Visit `http://localhost:4000`

---

## ✏️ Adding Content

### Add a Project

Create `_projects/[project-name]/index.md`:

```yaml
---
title: "Project Title"
description: "Brief description of the project"
categories: [Projects]
icon: fas fa-calculator        # FontAwesome icon
tags: ["Tag1", "Tag2"]
link: "#"                      # External link or "#" for internal page
order: 1                       # Display order (lower = first)
status: planned                # planned | in-progress | completed
---

## Content

Write your project details here in Markdown.
```

**Front Matter Fields:**

| Field | Description | Example |
|-------|-------------|---------|
| `title` | Project title | `"Modular Commutator"` |
| `description` | Short description shown on card | `"Implementation of..."` |
| `categories` | Must be `[Projects]` for projects | `[Projects]` |
| `icon` | FontAwesome icon class | `fas fa-calculator` |
| `tags` | Array of tags | `["Physics", "ML"]` |
| `link` | External URL or `#` for internal | `"https://github.com/..."` or `#` |
| `order` | Display order (ascending) | `1`, `2`, `3` |
| `status` | Project status badge | `planned`, `in-progress`, `completed` |

**Status Options:**
- `planned` → Shows "Coming Soon" button
- `in-progress` → Shows "View Project" button (orange badge)
- `completed` → Shows "View Project" button (green badge)

**Important Notes:**
- Folder names don't matter (only for organization)
- `categories` must be manually set to `[Projects]` (not auto-detected from folder)
- If `link: "#"`, clicking goes to the project's internal page (`/projects/project-name/`)
- If `link: "https://..."`, clicking opens external URL

### Add a Note

Create `_notes/[category]/[note-name].md`:

```yaml
---
title: "Note Title"
categories: [Physics]          # Physics | Machine Learning | Quantum Computing
tags: ["tag1", "tag2"]
icon: fas fa-atom
---

Your note content in Markdown.
```

### Add a Reading

Create `_readings/papers/[reading-name].md`:

```yaml
---
title: "Paper Title"
date: 2024-01-15
categories: [Papers]
tags: ["Quantum", "ML"]
---

Your reading notes.
```

---

## 🎨 Customization

### Design Tokens

Edit `_sass/emergence/_variables.scss` to customize:

```scss
// Colors
$color-primary: rgba(0, 255, 255, 1);  // Cyan glow
$color-bg: #000000;                     // OLED black

// Typography
$fs-base: 1rem;                         // Base font size
$fw-light: 300;                         // Font weight
```

### Page Styles

- Page-specific styles: `_sass/emergence/pages/_[page-name].scss`
- Component styles: `_sass/emergence/_components.scss`

---

## 🛠 Tech Stack

| Category | Technology |
|----------|-----------|
| **Generator** | Jekyll 4.3 |
| **Styling** | SCSS (Sass) |
| **Icons** | FontAwesome 6 |
| **Comments** | Utterances (GitHub Issues) |
| **Hosting** | GitHub Pages |
| **Plugins** | `jekyll-archives`, `jekyll-seo-tag`, `jekyll-sitemap`, `jekyll-feed`, `jekyll-paginate` |

---

## 📝 Development Notes

### SCSS Compilation

- Main entry: `assets/css/emergence.scss`
- Add new partials to `_sass/emergence/`
- Import in `emergence.scss` with `@import 'emergence/[name]'`

### UTF-8 Encoding

SCSS files use UTF-8 encoding for Korean comments:
- Set in `_config.yml`: `sass.encoding: utf-8`
- Run builds with: `LANG=en_US.UTF-8 bundle exec jekyll build`

### Build & Deploy

```bash
# Local build
bundle exec jekyll build

# Deploy (automatic via GitHub Actions on push to main)
git push origin main
```

---

## 📄 Documentation

- **Design Philosophy**: [`DESIGN.md`](DESIGN.md)
- **Technical Context**: [`CLAUDE.md`](CLAUDE.md)

---

## 📜 License

MIT License - feel free to use this theme for your own portfolio!

---

## 🌟 Credits

- Design inspiration: Apple, Notion, Stripe
- Physics inspiration: Quantum entanglement, topological matter, emergent phenomena
- Cosmos inspiration: James Webb Space Telescope deep field images

---

**Built with ❤️ and quantum mechanics**
