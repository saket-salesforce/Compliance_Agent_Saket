# AI Compliance Dashboard

A modern, Figma-inspired compliance dashboard with real-time monitoring and deal management.

## Live Demo

**Deploy folder**: Contains all files ready for deployment to Heroku or any static hosting.

## Files Structure

```
deploy/              # Ready-to-deploy static files
├── index.html       # Landing page
├── demo.html        # Main dashboard (Home/Overview)
├── compliance_tab.html
├── deal_desk.html
├── deal_detail.html
└── static.json      # Heroku configuration
```

## Quick Start

### Option 1: Open Locally
Open `deploy/demo.html` in your browser.

### Option 2: Deploy to Heroku
See `deploy/DEPLOY_HEROKU.md` for instructions.

## Pages

- **Home/Overview**: `demo.html`
- **Compliance Tab**: `compliance_tab.html`
- **Deal Desk**: `deal_desk.html`
- **Deal Details**: `deal_detail.html` (accessed by clicking deals)

## Tech Stack

- Pure HTML/CSS/JavaScript
- Tailwind CSS (CDN)
- No build process required
- Self-contained static files
