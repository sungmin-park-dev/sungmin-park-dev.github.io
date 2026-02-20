#!/usr/bin/env bash
# =============================================================================
# sync-to-theme.sh
# Syncs the emergence design system to a separate public template repo.
#
# Usage:
#   ./tools/sync-to-theme.sh [THEME_REPO_PATH]
#
# Example:
#   ./tools/sync-to-theme.sh ~/GitHub/emergence-theme
#
# What it copies:   design system files (SCSS, layouts, includes, config)
# What it skips:    personal info, real content, CV, avatar, private images
# What it replaces: profile.yml → template placeholder
#                   _config.yml → strips personal url/social
# =============================================================================

set -euo pipefail

# ── Args ─────────────────────────────────────────────────────────────────────
THEME_DIR="${1:-}"
if [[ -z "$THEME_DIR" ]]; then
  echo "❌  Usage: ./tools/sync-to-theme.sh <path-to-theme-repo>"
  exit 1
fi

SRC="$(cd "$(dirname "$0")/.." && pwd)"   # main repo root
DEST="$(cd "$THEME_DIR" && pwd)"          # theme repo root

echo "📦  Syncing emergence design system"
echo "    from: $SRC"
echo "    to:   $DEST"
echo ""

# ── Helper ───────────────────────────────────────────────────────────────────
copy() {
  local src="$SRC/$1" dest="$DEST/$1"
  mkdir -p "$(dirname "$dest")"
  cp -r "$src" "$dest"
  echo "  ✅  $1"
}

# ── 1. Design System (SCSS) ───────────────────────────────────────────────────
echo "▶  Design system"
rsync -a --delete "$SRC/_sass/"       "$DEST/_sass/"
rsync -a --delete "$SRC/assets/css/"  "$DEST/assets/css/"
echo "  ✅  _sass/ + assets/css/"

# ── 2. Layouts & Includes ────────────────────────────────────────────────────
echo "▶  Layouts & includes"
rsync -a --delete "$SRC/_layouts/"    "$DEST/_layouts/"
rsync -a --delete "$SRC/_includes/"   "$DEST/_includes/"
echo "  ✅  _layouts/ + _includes/"

# ── 3. JavaScript ────────────────────────────────────────────────────────────
echo "▶  JavaScript"
rsync -a --delete "$SRC/assets/js/"   "$DEST/assets/js/"
echo "  ✅  assets/js/"

# ── 4. Theme data tokens ─────────────────────────────────────────────────────
echo "▶  Theme data"
copy "_data/theme_dark.yml"
copy "_data/theme_light.yml"

# ── 5. Tab pages (structure only — content is in collections) ────────────────
echo "▶  Tab pages"
rsync -a --delete "$SRC/_tabs/"       "$DEST/_tabs/"
echo "  ✅  _tabs/"

# ── 6. Core files ────────────────────────────────────────────────────────────
echo "▶  Core files"
copy "index.html"
copy "Gemfile"
copy "Gemfile.lock"
copy ".gitignore"
copy ".github/workflows/pages.yml" 2>/dev/null || true

# ── 7. Favicons (generic — no personal images) ───────────────────────────────
echo "▶  Favicons"
rsync -a --delete "$SRC/assets/img/favicons/" "$DEST/assets/img/favicons/"
echo "  ✅  assets/img/favicons/"

# ── 8. Sample collections (templates + samples only, no real content) ─────────
echo "▶  Sample collections"
rsync -a --delete \
  --exclude="emergence-site/" \
  --exclude="modular-commutator/" \
  --exclude="spin-wave-theory/" \
  "$SRC/_projects/"   "$DEST/_projects/"

rsync -a --delete "$SRC/_notes/"     "$DEST/_notes/"
rsync -a --delete "$SRC/_readings/"  "$DEST/_readings/"
echo "  ✅  _projects/ _notes/ _readings/ (real projects excluded)"

# ── 9. profile.yml → replace with template ───────────────────────────────────
echo "▶  Profile template"
mkdir -p "$DEST/_data"
cat > "$DEST/_data/profile.yml" << 'YAML'
# =====================================================
# emergence — Profile Data
# =====================================================
# Edit this file to update personal info site-wide.
# Used in: _tabs/about.md, _layouts/base.html (SEO)
# =====================================================

# --- Identity ---
name: "Your Name"
name_ko: ""                        # optional: name in another language
avatar: /assets/img/common/avatar.png

# --- Affiliation ---
program: "Your Program"
institution: "Your Institution"
status: ""                         # optional: current status note

# --- Contact ---
email: "your.email@example.com"
cv_url: ""                         # set to /assets/files/cv.pdf when ready

# --- Social Links ---
social:
  github: "https://github.com/yourusername"
  linkedin: ""                     # optional
  # instagram: ""                  # uncomment if needed

# --- Research Interests ---
research:
  physics:
    - "Topic 1: Brief description"
    - "Topic 2: Brief description"
  ml:
    - "Topic 3: Brief description"
    - "Topic 4: Brief description"
YAML
echo "  ✅  _data/profile.yml (template)"

# ── 10. _config.yml → strip personal info ────────────────────────────────────
echo "▶  _config.yml (sanitized)"
sed \
  -e 's|url:.*|url: "https://yourusername.github.io"|' \
  -e 's|title:.*|title: "emergence · Your Name"|' \
  -e 's|tagline:.*|tagline: "your · research · tagline"|' \
  -e 's|description:.*|description: "A minimal Jekyll portfolio theme"|' \
  -e 's|author:.*|author: "Your Name"|' \
  -e 's|  username:.*|  username: yourusername|' \
  -e 's|    - https://github.com/.*|    - https://github.com/yourusername|' \
  -e 's|    - https://www.linkedin.*||' \
  -e '/avatar:/d' \
  -e '/logo:/d' \
  -e '/social_preview_image:/d' \
  "$SRC/_config.yml" > "$DEST/_config.yml"
echo "  ✅  _config.yml"

# ── 11. Placeholder assets (avatar + backgrounds) ────────────────────────────
echo "▶  Placeholder images"
# Copy background images (Unsplash CC0 — OK to distribute)
copy "assets/img/common/bg-dark.jpg"
copy "assets/img/common/bg-light.jpg"
# DO NOT copy: avatar.png, CV.pdf (personal)
# Create a placeholder avatar notice instead
mkdir -p "$DEST/assets/img/common"
if [[ ! -f "$DEST/assets/img/common/avatar.png" ]]; then
  cp "$SRC/assets/img/common/preview.png" "$DEST/assets/img/common/avatar.png"
  echo "  ✅  avatar.png (preview placeholder)"
fi

# ── 12. Footer: update copyright in base.html ────────────────────────────────
echo "▶  Sanitize footer"
sed -i '' \
  's|designed by Sung-Min Park|designed by emergence|g' \
  "$DEST/_layouts/base.html" \
  "$DEST/_layouts/minimal.html" 2>/dev/null || true
sed -i '' \
  's|Jeremy Thomas / Unsplash.*</a>|Jeremy Thomas / Unsplash</a>|g' \
  "$DEST/index.html" 2>/dev/null || true
echo "  ✅  footer text sanitized"

# ── Done ─────────────────────────────────────────────────────────────────────
echo ""
echo "✨  Sync complete!"
echo ""
echo "Next steps:"
echo "  1. cd $DEST"
echo "  2. Review changes: git diff"
echo "  3. git add -A && git commit -m 'sync: update from main repo'"
echo "  4. git push origin main"
