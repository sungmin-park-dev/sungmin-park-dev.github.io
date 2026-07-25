# Repo Status Snapshot - 2026-07-09

## Worktree

Branch: `main`, tracking `origin/main`.

Existing uncommitted changes were preserved and classified instead of reverted:

| Path | Classification | Notes |
|------|----------------|-------|
| `.claude/settings.local.json` | Local Claude permission history | Local file preserved, but removed from git tracking with `git rm --cached`. `.claude/` is ignored and should remain local-only. |
| `_notes/computation/sample-quantum-algorithms.md` | Sample content metadata change | YAML style normalized; `math` and `toc` changed from `true` to `false`. Needs content-owner review before commit. |
| `_readings/papers/sample-neural-quantum.md` | Sample content metadata change | YAML style normalized; `math` changed to `false`, `sitemap` changed to `true`. Needs content-owner review before commit. |
| `assets/img/common/bg-light.jpeg` | Asset cleanup residue | Deleted old `.jpeg`. Current SCSS references `assets/img/common/bg-light.jpg`, so this deletion appears consistent with the extension migration. |
| `AGENTS.md` | Codex work guide | New guide added and updated to current repo behavior. |

New intentional changes from this pass:

| Path | Intent |
|------|--------|
| `_projects/emergence-theme/index.md` | Normalize unsupported `status: active` to `status: completed`, making the project visible and linkable on `/projects/`. |
| `_projects/template-project.md` | Replace stale `active | completed | planned` guidance with `completed | in-progress | planned`. |
| `docs/repo-status-2026-07-09.md` | Record current audit, drift, and verification notes. `docs/` is excluded from the Jekyll build. |
| `.claude/settings.local.json` | Stop tracking local Claude permission-history state while keeping the file on disk. |

## Site Structure

- Layouts: `_layouts/base.html`, `_layouts/minimal.html`, `_layouts/custom-page.html`, `_layouts/post.html`.
- Tabs: `_tabs/projects.md`, `_tabs/notes.md`, `_tabs/readings.md`, `_tabs/about.md`.
- Includes: project/note/reading cards and shared nav live in `_includes/`.
- SCSS: `assets/css/emergence.scss` uses Dart Sass `@use` and loads `_sass/emergence/**` partials.
- Data: `_data/profile.yml` drives About/profile UI; `_data/theme_dark.yml` and `_data/theme_light.yml` are theme-token sources.

## Build And Deploy Path

- Local build works with explicit rbenv PATH:
  `PATH=/Users/david/.rbenv/versions/3.3.6/bin:$PATH LANG=en_US.UTF-8 bundle exec jekyll build`
- Plain `/usr/bin/bundle` fails because macOS system Ruby 2.6 cannot satisfy Bundler 4.0.6.
- GitHub Actions deploys through `.github/workflows/pages-deploy.yml`.
- Workflow builds `_site`, runs HTML Proofer, uploads the Pages artifact, then deploys through `actions/deploy-pages`.
- Agent guide files `AGENTS.md` and `claude.md` are excluded from Jekyll output and should not appear in the public `_site` artifact.

## Collections

Configured collections:

- `site.projects` -> `_projects/` -> `/projects/:path/`
- `site.notes` -> `_notes/` -> `/notes/:path/`
- `site.readings` -> `_readings/` -> `/readings/:path/`
- `site.tabs` -> `_tabs/`

Project status contract:

- Valid values: `completed`, `in-progress`, `planned`.
- `completed` cards are clickable.
- `in-progress` and `planned` cards are locked.
- Unsupported values are excluded from the initial projects grid because `_tabs/projects.md` concatenates only known status buckets.

## Document Drift

- `AGENTS.md` was updated to current behavior.
- `claude.md` is now a thin pointer to `AGENTS.md` to avoid duplicated agent guidance drifting again.
- `README.md` correctly mentions `@use`, but remains user-facing and less operational than `AGENTS.md`.
- `tools/sync-to-theme.sh` now copies `.github/workflows/pages-deploy.yml`, matching this repo's active deploy workflow.
- `Gemfile` includes `jekyll-archives`; `_config.yml` does not activate it.

## Rendering Issue Confirmed

Before the status fix, `_projects/emergence-theme/index.md` used `status: active`.

Observed effect after `jekyll build`:

- `_site/projects/index.html` contained the `emergence` completed card and planned project cards.
- It did not render a separate `emergence-theme` project card.
- Root cause: `_tabs/projects.md` only gathers `completed`, `in-progress`, and `planned` projects.

Fix:

- Changed `emergence-theme` to `status: completed`.
- Updated the project template to prevent new `active` statuses.
