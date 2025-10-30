# Simple Heroku Deployment

## Step-by-Step

### 1. Make sure you're in the deploy folder
```bash
cd "/Users/sadhikarla/Desktop/Compliance dashboard/deploy"
```

### 2. Initialize git (if not already done)
```bash
git init
git add .
git commit -m "Deploy to Heroku"
```

### 3. Login to Heroku
```bash
heroku login
```

### 4. Create Heroku app
```bash
heroku create your-app-name
```
(or leave blank for auto name: `heroku create`)

### 5. Set static buildpack
```bash
heroku buildpacks:set https://github.com/heroku/heroku-buildpack-static
```

### 6. Deploy
```bash
git push heroku HEAD:main
```

### 7. Open your site
```bash
heroku open
```

---

## Your Dashboard Will Be At:
```
https://your-app-name.herokuapp.com/index.html
```

Or:
```
https://your-app-name.herokuapp.com/demo.html
```

---

## Troubleshooting

If it's not working:
```bash
heroku logs --tail
```

This shows what's happening when someone visits your site.

