# GitHub Repository Setup

## Quick Steps to Create GitHub Repo & Get Shareable Link

### Step 1: Create Repository on GitHub
1. Go to https://github.com/new
2. Repository name: `compliance-dashboard` (or any name you want)
3. Make it **Public** (so you can share the link)
4. **Don't** check "Initialize with README"
5. Click "Create repository"

### Step 2: Push Your Code
Run these commands (GitHub will show you this, but here they are):

```bash
cd "/Users/sadhikarla/Desktop/Compliance dashboard"

git remote add origin https://github.com/YOUR_USERNAME/compliance-dashboard.git
git branch -M main
git push -u origin main
```
(Replace `YOUR_USERNAME` with your GitHub username)

### Step 3: Share the Link
Once pushed, your repository will be at:
```
https://github.com/YOUR_USERNAME/compliance-dashboard
```

People can:
- View the code
- Download/clone the files
- Open `demo.html` locally

---

## Enable GitHub Pages (Bonus - Makes it Viewable in Browser)

1. Go to your repo on GitHub
2. Settings → Pages
3. Source: Deploy from branch `main`
4. Folder: `/deploy` or `/ (root)` 
5. Save

Then your dashboard will be live at:
```
https://YOUR_USERNAME.github.io/compliance-dashboard/deploy/demo.html
```

