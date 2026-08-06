#!/usr/bin/env bash
# ============================================================
#  Deutsch Tutor — GitHub Pages deploy script
#  Run this on YOUR computer (not needed for the web-upload path).
#
#  1. Install GitHub CLI:   https://cli.github.com
#  2. Login once:           gh auth login
#  3. Run:                  bash deploy.sh
#
#  It creates/updates the repo "deutsch-tutor" and enables Pages.
# ============================================================
set -euo pipefail

REPO_NAME="${1:-deutsch-tutor}"
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

command -v gh >/dev/null || { echo "❌ gh CLI not found — install from https://cli.github.com"; exit 1; }
gh auth status >/dev/null 2>&1 || { echo "❌ Not logged in — run: gh auth login"; exit 1; }

USERNAME="$(gh api user --jq .login)"
echo "→ Publishing as: $USERNAME"

# init git if needed
if [ ! -d .git ]; then
  git init -b main >/dev/null
fi
git add -A
git diff --cached --quiet || git commit -m "Deutsch Tutor update $(date +%F)" >/dev/null

# create repo if missing (public, source = this folder)
if ! gh repo view "$USERNAME/$REPO_NAME" >/dev/null 2>&1; then
  gh repo create "$REPO_NAME" --public --source . --remote origin --push
  echo "✅ Repo created: https://github.com/$USERNAME/$REPO_NAME"
else
  git push -u origin main
  echo "✅ Repo updated: https://github.com/$USERNAME/$REPO_NAME"
fi

# enable GitHub Pages (deploy from main branch, root)
gh api "repos/$USERNAME/$REPO_NAME/pages" \
  --method POST -f "source[branch]=main" -f "source[path]=/" >/dev/null 2>&1 \
  || gh api "repos/$USERNAME/$REPO_NAME/pages" \
     -X PUT -f "source[branch]=main" -f "source[path]=/" >/dev/null

echo ""
echo "🌐 Live in ~1–2 minutes:  https://$USERNAME.github.io/$REPO_NAME/"
echo "📱 Open it on your phone → Chrome ⋮ → Install app"
