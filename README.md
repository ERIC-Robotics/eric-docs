# ERIC Robotics — Documentation Hub

Multi-product internal documentation site.

**Live site:** [docs.ericrobotics.com](https://docs.ericrobotics.com)

## Structure

```
eric-docs/
├── landing/                  # Landing page (static HTML)
│   └── index.html
├── products/
│   ├── railwaymitra/         # Each product is its own MkDocs site
│   │   ├── mkdocs.yml
│   │   └── docs/
│   ├── ubis/                 # Add later
│   └── runwaymitra/          # Add later
├── scripts/
│   ├── build.sh              # Build all sites into site/
│   └── deploy.sh             # Build + push to gh-pages
└── requirements.txt
```

## Setup (one-time)

```bash
pip install -r requirements.txt
```

## Local preview

```bash
# Build everything
./scripts/build.sh

# Serve locally
cd site && python3 -m http.server 8000
# Open http://localhost:8000
```

Or preview a single product:

```bash
cd products/railwaymitra
mkdocs serve
# Open http://127.0.0.1:8000
```

## Deploy

```bash
./scripts/deploy.sh
```

This builds all products, copies the landing page, and pushes the combined
`site/` folder to the `gh-pages` branch. GitHub Pages serves it from there.

## Adding a new product

1. Copy an existing product folder:
   ```bash
   cp -r products/railwaymitra products/ubis
   ```
2. Edit `products/ubis/mkdocs.yml` — update `site_name`, `site_url`, `site_dir`, and `nav`
3. Edit `products/ubis/docs/` — replace content
4. Add a card in `landing/index.html` — change `coming-soon` to `active` and add the link
5. Run `./scripts/deploy.sh`

## Adding versioning (later)

When a product needs versions, install `mike`:

```bash
pip install mike
cd products/railwaymitra
mike deploy v1.0 latest --update-aliases
mike set-default latest
```

This creates versioned builds with a dropdown selector. See
[mike docs](https://github.com/jimporter/mike) for details.
