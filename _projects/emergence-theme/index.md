---
title: "emergence-theme"
description: "Open-source Jekyll portfolio theme extracted from this site — flat editorial design system, tokenized colors, content collections"
categories: [Projects]
icon: fas fa-palette
tags: ["Jekyll", "SCSS", "Open Source", "Design System"]
link: "https://github.com/sungmin-park-dev/emergence-theme"
github_repo: "sungmin-park-dev/emergence-theme"
order: 5
status: completed
project_type: systems
---

## Overview

**emergence-theme** is an open-source Jekyll portfolio theme extracted from this site. It provides a complete starting point for researchers and academics who want a minimal, editorial-style portfolio without building from scratch.

## Features

- Dual dark/light themes with CSS custom properties — toggled at runtime, respects system preference on first visit
- Projects homepage grouped by `project_type` (research / systems), sorted by `order`
- Notes and Readings collections grouped automatically by content `subcategory` — no hardcoded category list to edit
- Post layout with TOC sidebar, breadcrumb navigation, and Utterances comments
- Fully tokenized SCSS design system — every color is a CSS custom property, editable via `_data/` YAML with no SCSS knowledge required
- No theme gem dependency — pure Jekyll 4.3

## Design Concepts

- A single restrained accent color per theme — near-white/near-black surfaces, no glow or elevation
- Hierarchy built from thin rules, type weight, and whitespace instead of cards or badges
- Bullet-hierarchy list style: filled bullets for top-level items, open bullets for nested sub-items — ink decreases as hierarchy deepens
- SF Pro system font stack; Regular body text, Semibold entry titles, Light only in the page hero

## Links

- [GitHub Repository](https://github.com/sungmin-park-dev/emergence-theme)
