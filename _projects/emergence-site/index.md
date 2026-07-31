---
title: "Research Portfolio System"
description: "Personal Jekyll research portfolio using the image-led Emergence system and Deep Glacier / Stellar Field environments."
categories: [Projects]
icon: fas fa-globe
tags: ["Web Design", "Jekyll", "SCSS", "Design System"]
link: "https://github.com/sungmin-park-dev/sungmin-park-dev.github.io"
github_repo: "sungmin-park-dev/sungmin-park-dev.github.io"
permalink: /projects/emergence-site/
order: 4
status: completed
project_type: software
---

## Overview

**emergence** is a custom-built research portfolio for presenting research
implementations, software systems, and publications within one coherent visual
environment.

The site uses a custom design system built on Jekyll rather than a packaged
theme. Its reusable, identity-neutral version is maintained separately as
[`emergence-project/emergence-theme`](https://github.com/emergence-project/emergence-theme).

## Design Philosophy

The design starts from two photographic environments rather than treating them
as decorative backgrounds:

- **Deep Glacier** — a bright, open light environment shaped by horizon, diffusion, and low visual density
- **Stellar Field** — a dark environment shaped by depth, star points, and restrained ice-blue light
- **Field / Plane / Trace / Point** — a role-based grammar for backgrounds, reading surfaces, separators, and controls
- **Horizon Rail** — navigation aligned with the environmental horizon rather than a generic floating navbar
- **Content-preserving surfaces** — translucency and shadow are used only where reading or interaction requires them

## Tech Stack

- **Generator**: Jekyll 4.4 (decoupled from Chirpy theme)
- **Styling**: Custom SCSS design system (emergence)
- **Media**: Responsive AVIF / WebP environments with JPEG fallbacks
- **Icons**: FontAwesome 6
- **Hosting**: GitHub Pages
- **Plugins**: jekyll-seo-tag, jekyll-sitemap

## Features

- Persistent light / dark environment control with system-preference initialization
- Projects grouped by work type with explicit completion states
- A continuous About reading surface and focused project layouts
- Responsive image delivery and theme-specific mobile crops
- Keyboard focus, reduced-motion handling, and accessible environment labels

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
    ├── _projects.scss
    ├── _about.scss
    └── _post.scss
```

### Key Challenges Solved

1. **Theme Decoupling**: Removed the Chirpy dependency while preserving the required Jekyll plugins
2. **Design Grammar**: Converted visual intuition into explicit Field / Plane / Trace / Point contracts
3. **Responsive Environments**: Added format and density variants without abandoning original imagery
4. **Public Extraction**: Separated the reusable theme from personal identity and project content

## Links

- [Live Site](https://sungmin-park-dev.github.io)
- [GitHub Repository](https://github.com/sungmin-park-dev/sungmin-park-dev.github.io)
- [Design Philosophy](https://github.com/sungmin-park-dev/sungmin-park-dev.github.io/blob/main/DESIGN.md)
- [emergence-theme (open-source)](https://github.com/emergence-project/emergence-theme) — reusable Jekyll design system extracted from this site
- [emergence-theme live demo](https://emergence-project.github.io/emergence-theme/)
