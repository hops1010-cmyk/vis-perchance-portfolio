# VISTAMATIONS · Perchance Portfolio

Embedded Perchance generators with a dynamic portfolio directory and dedicated embed pages.

## Quick Start

```bash
npm install        # no deps needed; server uses Node built-ins only
npm start           # or: node server.js  — serves on port 3006
```

Open `http://localhost:3006`.

## What's Here

This server hosts the **VISTAMATIONS Perchance Portfolio** — a directory of Perchance generators embedded from `https://null.perchance.org/<slug>`.

### Pages

| Route | Description |
|-------|-------------|
| `/` | Portfolio index — 46 generators with localStorage management |
| `/embed/<slug>` | Dynamic embed page (lazy iframe, back to portfolio) |
| `/xqvwmk521g.html` | Standalone embed page for the xqvwmk521g generator |
| `/vis-character.html` | Standalone embed page for the vis-character generator |
| `/healthz` | Health check (returns `ok`) |

### New pages added

- **`xqvwmk521g`** — Perchance generator at `https://null.perchance.org/xqvwmk521g`
- **`vis-character`** — Perchance generator at `https://null.perchance.org/https---perchance-org-vis-character`

These are now listed in the portfolio's starter slug list (46 generators total) and served as standalone static HTML pages.

## Deployment

### Docker

```bash
docker build -t vis-perchance-portfolio .
docker run -p 3006:3006 vis-perchance-portfolio
```

### Vercel

The project is import-ready on Vercel. Static files (`index.html`, `embed.html`, `*.html`) are served directly; `/embed/<slug>` is rewritten to `embed.html` via client-side JavaScript.

```bash
npx vercel --prod
```

### GitHub Codespaces

Open in a Codespace — the devcontainer auto-installs and runs the server on port 3006.

## Project Structure

```
├── index.html        Portfolio landing page (46 generator cards, tabs, localStorage)
├── embed.html        Static embed page (client-side slug routing for Vercel)
├── xqvwmk521g.html   Standalone generator page
├── vis-character.html  Standalone generator page
├── server.js         Node.js HTTP server (port 3006)
├── package.json      Scripts and metadata
├── vercel.json       Vercel rewrites
├── Dockerfile        Container build
└── .devcontainer/    Codespaces config
```
