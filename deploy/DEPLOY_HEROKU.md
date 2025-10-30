# Deploy to Heroku

## Prerequisites

1. **Install Heroku CLI** (if not already installed):
   ```bash
   # Mac
   brew tap heroku/brew && brew install heroku
   
   # Or download from: https://devcenter.heroku.com/articles/heroku-cli
   ```

2. **Login to Heroku**:
   ```bash
   heroku login
   ```

## Deployment Steps

### Option 1: Using Heroku Static Buildpack (Recommended)

1. **Navigate to deploy folder**:
   ```bash
   cd deploy
   ```

2. **Initialize Git** (if not already):
   ```bash
   git init
   git add .
   git commit -m "Initial commit - Compliance Dashboard"
   ```

3. **Create Heroku app**:
   ```bash
   heroku create your-app-name
   ```
   (Replace `your-app-name` with your desired name, or leave blank for auto-generated name)

4. **Set buildpack**:
   ```bash
   heroku buildpacks:set https://github.com/heroku/heroku-buildpack-static
   ```

5. **Deploy**:
   ```bash
   git push heroku main
   ```

6. **Open your app**:
   ```bash
   heroku open
   ```

### Option 2: Quick Deploy Script

I've created a script that does everything for you. Just run:

```bash
cd deploy
chmod +x deploy-heroku.sh
./deploy-heroku.sh
```

## Your Dashboard URLs

After deployment, your dashboard will be available at:

- **Main URL**: `https://your-app-name.herokuapp.com`
- **Dashboard**: `https://your-app-name.herokuapp.com/demo.html`
- **Compliance**: `https://your-app-name.herokuapp.com/compliance_tab.html`
- **Deal Desk**: `https://your-app-name.herokuapp.com/deal_desk.html`

## Notes

- **Free tier**: Heroku offers a free tier (though with some limitations)
- **App naming**: App names must be unique across all Heroku apps
- **Static files**: This uses Heroku's static site buildpack, perfect for HTML/CSS/JS sites

## Troubleshooting

If you get errors:
- Make sure you're logged in: `heroku login`
- Check buildpack: `heroku buildpacks`
- View logs: `heroku logs --tail`

