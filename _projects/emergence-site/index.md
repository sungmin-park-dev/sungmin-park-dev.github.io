---
title: "Research Portfolio System"
description: "Custom Jekyll portfolio for organizing research implementations, software systems, and publications."
categories: [Projects]
icon: fas fa-globe
tags: ["Web Design", "Jekyll", "SCSS", "Design System"]
link: "https://github.com/sungmin-park-dev/sungmin-park-dev.github.io"
github_repo: "sungmin-park-dev/sungmin-park-dev.github.io"
order: 4
status: completed
project_type: systems
---

## Overview

**emergence** is a custom-built portfolio website that embodies the concept of emergent phenomena in physics — where simple elements combine to create complex, beautiful systems.

The site features a completely custom design system built from scratch, with no reliance on pre-built themes beyond the Jekyll engine itself.

## Design Philosophy

The design draws inspiration from quantum many-body physics:

- **OLED Black Background** (`#000000`) — representing the void of space and infinite possibilities
- **Cyan Glow** — ideas shining through darkness, like stars in the cosmos
- **Glassmorphism** — layered information creating depth and dimension
- **Ultra-Light Typography** (100-200 weight) — minimal visual noise, maximum clarity

## Tech Stack

- **Generator**: Jekyll 4.4 (decoupled from Chirpy theme)
- **Styling**: Custom SCSS design system (emergence)
- **Icons**: FontAwesome 6
- **Hosting**: GitHub Pages
- **Plugins**: jekyll-seo-tag, jekyll-sitemap

## Features

- ✨ Fully custom design system with modular SCSS architecture
- 🎨 Glassmorphic UI with subtle animations and hover effects
- 📱 Responsive layouts for projects and content pages
- 🌙 OLED-optimized dark interface
- ⚡ Lightweight and fast (no heavy frameworks)

## Implementation Highlights

### Design System Structure

```
_sass/emergence/
├── _variables.scss     # Design tokens
├── _base.scss          # Reset and utilities
├── _typography.scss    # Font system
├── _components.scss    # Reusable components
├── _navigation.scss    # Header navigation
└── pages/              # Page-specific styles
    ├── _home.scss
    ├── _projects.scss
    ├── _about.scss
    └── _post.scss
```

### Key Challenges Solved

1. **Chirpy Decoupling**: Removed theme dependency while keeping useful plugins
2. **UTF-8 Encoding**: Handled Korean comments in SCSS files
3. **Modular Architecture**: Created reusable components with consistent design tokens
4. **Glassmorphism**: Implemented layered glass effects with backdrop filters

## Links

- [Live Site](https://sungmin-park-dev.github.io)
- [GitHub Repository](https://github.com/sungmin-park-dev/sungmin-park-dev.github.io)
- [Design Philosophy](https://github.com/sungmin-park-dev/sungmin-park-dev.github.io/blob/main/DESIGN.md)
- [emergence-theme (open-source)](https://github.com/sungmin-park-dev/emergence-theme) — reusable Jekyll theme extracted from this site
