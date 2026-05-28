#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
SITE_DIR="$ROOT_DIR/site"

echo "=== ERIC Docs — Deploy ==="
echo ""

# Step 1: Build
bash "$SCRIPT_DIR/build.sh"

# Step 2: Add CNAME
echo "docs.ericrobotics.com" > "$SITE_DIR/CNAME"

# Step 3: Deploy to gh-pages using ghp-import
# (ghp-import pushes the contents of a directory to a gh-pages branch)
if ! command -v ghp-import &> /dev/null; then
    echo "Installing ghp-import..."
    pip install ghp-import --break-system-packages -q
fi

echo ""
echo "Deploying to gh-pages branch..."
cd "$ROOT_DIR"
ghp-import -n -p -f "$SITE_DIR" -m "Deploy docs $(date +%Y-%m-%d\ %H:%M)"

echo ""
echo "=== Deployed! ==="
echo "Site will be live at https://docs.ericrobotics.com in a few minutes."
