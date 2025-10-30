# Quick Deployment Guide

## Option 1: Netlify Drop (Fastest - 2 minutes) ⚡

1. Go to **https://app.netlify.com/drop**
2. Drag the entire `deploy` folder into the browser window
3. Get instant URL like: `https://your-site-name.netlify.app`
4. **Share this URL** - it works immediately!

**Your link will be**: `https://your-site-name.netlify.app/demo.html`

---

## Option 2: GitHub Pages (Permanent & Professional) 🌐

### Step 1: Create GitHub Repository
1. Go to github.com and create a new repository (name it `compliance-dashboard`)
2. Don't initialize with README

### Step 2: Upload Files
Run these commands in this directory:

```bash
git init
git add .
git commit -m "Initial commit - Compliance Dashboard"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/compliance-dashboard.git
git push -u origin main
```

### Step 3: Enable GitHub Pages
1. Go to repository Settings → Pages
2. Source: Deploy from branch `main`
3. Folder: `/ (root)`
4. Save

**Your link will be**: `https://YOUR_USERNAME.github.io/compliance-dashboard/demo.html`

---

## Option 3: Vercel (Also Fast) 🚀

1. Install: `npm i -g vercel`
2. In this folder, run: `vercel`
3. Follow prompts (just press Enter for defaults)
4. Get instant URL

---

## Recommended for Sharing in Docs

**Use Netlify Drop** - it's the fastest (2 minutes) and gives you a clean URL to share immediately.

After deployment, you can share:
- **Home page**: `https://your-site.netlify.app/demo.html`
- **Deal Desk**: `https://your-site.netlify.app/deal_desk.html`
- **Compliance Tab**: `https://your-site.netlify.app/compliance_tab.html`

