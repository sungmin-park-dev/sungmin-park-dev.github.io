# Legacy template features

These features are intentionally inactive, not discarded. They were moved out
of the repository root so the active portfolio surface stays focused on
Projects and About.

## Packages

### `notes-readings/`

Preserves the Notes and Readings collections, sample content, card includes,
and page-specific SCSS.

To restore:

1. Copy `_notes/`, `_readings/`, `_includes/`, and `_sass/` contents back to
   their original repository-relative paths.
2. Merge `notes-readings/config-snippet.yml` into `_config.yml`.
3. Restore these lines in `assets/css/emergence.scss`:

   ```scss
   @use 'emergence/pages/notes';
   @use 'emergence/pages/readings';
   ```

### `blog/`

Preserves the post placeholder, draft template, and post last-modified hook.

To restore:

1. Copy `_posts/`, `_drafts/`, and `_plugins/` back to the repository root.
2. Merge `blog/config-snippet.yml` into `_config.yml`.

Restore the blog-related gems listed in `blog/config-snippet.yml`, then refresh
`Gemfile.lock`.

### `development/`

Preserves the VS Code Dev Container definition. Copy `.devcontainer/` back to
the repository root to restore container development.

### `emergence-theme-sync/`

Preserves the one-way sync tool for the separate `emergence-theme` repository.
Copy `tools/sync-to-theme.sh` back to restore that workflow.

### `historical-docs/`

Preserves dated repository snapshots for reference. These documents describe
past states and should not be treated as current operating instructions.

### `chirpy-static-assets/`

Preserves the source URL, pinned commit, and restore procedure for the old
Chirpy static-assets submodule. The upstream asset contents are not duplicated
locally.

### `project-filtering/`

Preserves the expandable project-tag filter include and its JavaScript. The
new project page is deliberately curated by project type and does not load
client-side filtering.

## Validation after restoration

```bash
PATH=/Users/david/.rbenv/versions/3.3.6/bin:$PATH \
LANG=en_US.UTF-8 \
bundle exec jekyll build

PATH=/Users/david/.rbenv/versions/3.3.6/bin:$PATH \
bundle exec htmlproofer _site --disable-external
```
