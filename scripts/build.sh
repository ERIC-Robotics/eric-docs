#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
SITE_DIR="$ROOT_DIR/site"

echo "=== ERIC Docs — Build ==="
echo ""

# Clean previous build
rm -rf "$SITE_DIR"
mkdir -p "$SITE_DIR"

# 1. Copy landing page
echo "[1/2] Building landing page..."
cp -r "$ROOT_DIR/landing/"* "$SITE_DIR/"
echo "      Done."

# 2. Build each product
echo "[2/2] Building product docs..."

for product_dir in "$ROOT_DIR/products"/*/; do
    product=$(basename "$product_dir")
    if [ -f "$product_dir/mkdocs.yml" ]; then
        echo "      -> $product"
        cd "$product_dir"
        mkdocs build --quiet
        echo "         Built -> site/$product/"
    fi
done

echo ""
echo "=== Build complete: $SITE_DIR ==="
echo ""
echo "To preview locally:"
echo "  cd $SITE_DIR && python3 -m http.server 8000"
echo ""
echo "To deploy:"
echo "  ./scripts/deploy.sh"
