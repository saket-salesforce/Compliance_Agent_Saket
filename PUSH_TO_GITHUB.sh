#!/bin/bash

echo "📦 Setting up GitHub repository..."
echo ""

# Check if remote already exists
if git remote | grep -q origin; then
    echo "ℹ️  Remote 'origin' already exists"
    echo "   Current remote:"
    git remote get-url origin
else
    echo "⚠️  No GitHub remote found!"
    echo ""
    echo "Please create a repository on GitHub first:"
    echo "1. Go to: https://github.com/new"
    echo "2. Create a new repository (can be Public or Private)"
    echo "3. Copy the repository URL"
    echo ""
    read -p "Enter your GitHub repository URL: " repo_url
    
    if [ -z "$repo_url" ]; then
        echo "❌ No URL provided. Exiting."
        exit 1
    fi
    
    git remote add origin "$repo_url"
    echo "✅ Remote added: $repo_url"
fi

echo ""
echo "🚀 Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Done! Your repository is now on GitHub!"
echo ""
echo "Share this link: $(git remote get-url origin | sed 's/\.git$//')"

