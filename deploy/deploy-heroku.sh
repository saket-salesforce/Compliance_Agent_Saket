#!/bin/bash

echo "🚀 Deploying Compliance Dashboard to Heroku..."
echo ""

# Check if Heroku CLI is installed
if ! command -v heroku &> /dev/null; then
    echo "❌ Heroku CLI not found!"
    echo "Install it from: https://devcenter.heroku.com/articles/heroku-cli"
    exit 1
fi

# Check if logged in
if ! heroku auth:whoami &> /dev/null; then
    echo "⚠️  Not logged in to Heroku. Logging in..."
    heroku login
fi

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
fi

# Add all files
echo "📝 Staging files..."
git add .

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo "ℹ️  No changes to commit. Skipping commit..."
else
    echo "💾 Committing files..."
    git commit -m "Deploy Compliance Dashboard"
fi

# Check if Heroku remote exists
if ! git remote | grep -q heroku; then
    echo "🔨 Creating Heroku app..."
    read -p "Enter app name (or press Enter for auto-generated name): " app_name
    if [ -z "$app_name" ]; then
        heroku create
    else
        heroku create "$app_name"
    fi
    
    echo "⚙️  Setting static buildpack..."
    heroku buildpacks:set https://github.com/heroku/heroku-buildpack-static
fi

# Deploy
echo "🚀 Deploying to Heroku..."
git push heroku HEAD:main

echo ""
echo "✅ Deployment complete!"
echo ""
echo "Your dashboard is live at:"
heroku info --shell | grep web_url | cut -d'=' -f2
echo ""
echo "To open it now, run: heroku open"
echo ""

