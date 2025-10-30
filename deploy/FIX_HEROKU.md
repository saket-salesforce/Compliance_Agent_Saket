# Fix Heroku Deployment Issues

## Quick Fix Steps

### 1. Check Your App Status
```bash
heroku logs --tail
```
This shows what's happening when someone visits your site.

### 2. Verify Buildpack
Your app needs the static buildpack. Check with:
```bash
heroku buildpacks
```

If it's not set, run:
```bash
heroku buildpacks:set https://github.com/heroku/heroku-buildpack-static
```

### 3. Redeploy with Fixed Configuration
The `static.json` has been fixed. Redeploy:

```bash
cd deploy
git init
git add .
git commit -m "Fix static.json configuration"
git push heroku HEAD:main
```

### 4. Test Your URLs
- Main page: `https://your-app.herokuapp.com/index.html`
- Dashboard: `https://your-app.herokuapp.com/demo.html`

## Common Issues & Fixes

### Issue: "Application Error" or blank page
**Fix**: Check buildpack and logs:
```bash
heroku buildpacks
heroku logs --tail
```

### Issue: 404 Not Found
**Fix**: The static.json routing might be wrong. The new simplified version should fix this.

### Issue: "No app specified"
**Fix**: Set your app:
```bash
heroku git:remote -a your-app-name
```

## Quick Redeploy Commands

If you're already deployed, just run:
```bash
cd deploy
git add static.json
git commit -m "Fix static config"
git push heroku HEAD:main
```

## Alternative: Use Different Buildpack

If static buildpack isn't working, try Node.js buildpack:

```bash
heroku buildpacks:set heroku/nodejs
```

Then update `package.json` to have proper start script (already done).

