#!/bin/bash

# Instructions:
# 1. First create a repository on GitHub at https://github.com/new
# 2. Copy the repository URL (looks like: https://github.com/YOUR_USERNAME/repo-name.git)
# 3. Run this script and paste the URL when asked
# OR
# 4. Run the commands below manually

echo "📦 Ready to push to GitHub"
echo ""
echo "Please provide your GitHub repository URL"
echo "(Example: https://github.com/yourusername/compliance-dashboard.git)"
echo ""
read -p "Paste your GitHub repo URL here: " repo_url

if [ -z "$repo_url" ]; then
    echo "❌ No URL provided"
    exit 1
fi

echo ""
echo "Connecting to GitHub..."
git remote add origin "$repo_url" 2>/dev/null || git remote set-url origin "$repo_url"

echo "Pushing code..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Done! Your code is on GitHub!"
echo ""
echo "Share this link: $(echo $repo_url | sed 's/\.git$//')"

