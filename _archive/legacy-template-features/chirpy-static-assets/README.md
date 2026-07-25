# Chirpy static assets

This package records the inactive Chirpy static-assets submodule that was
removed from the active repository root after the site moved to the custom
`emergence` design system.

## Preserved source

- Repository: `https://github.com/cotes2020/chirpy-static-assets.git`
- Original path: `assets/lib`
- Pinned commit: `02f4ada65dc75197654c3265a37a6f5fbc39f17c`

The asset contents are not duplicated here because the pinned commit remains
available from the upstream Git repository and from this repository's Git
history.

## Restore

From the repository root:

```bash
git submodule add https://github.com/cotes2020/chirpy-static-assets.git assets/lib
git -C assets/lib checkout 02f4ada65dc75197654c3265a37a6f5fbc39f17c
```

Only restore this package if active templates reference Chirpy assets again.
