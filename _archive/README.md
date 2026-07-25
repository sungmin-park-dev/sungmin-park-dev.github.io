# Local feature archive

This directory keeps inactive portfolio features in source control without
loading them into the active Jekyll site.

- `legacy-template-features/` contains the reusable template packages.
- Each package preserves its original repository-relative paths.
- `_config.yml` explicitly excludes `_archive/` from generated site output.

Restore a package only as a complete feature, then run the Jekyll build and
HTML checks before keeping the change.
