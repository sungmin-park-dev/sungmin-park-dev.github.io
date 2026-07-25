# Project tag filtering

This package preserves the inactive expandable tag cloud and client-side
project filter.

## Restore

1. Copy `_includes/tag-nebula.html` and `assets/js/tag-filter.js` back to their
   original repository-relative paths.
2. Restore the Tag Nebula rules from Git history to
   `_sass/emergence/_components.scss`.
3. Include the tag nebula and load `tag-filter.js` on the page that needs
   filtering.

The current homepage uses editorial project-type groups instead of an
interactive tag index.
