# Easy GitHub Push - Copy & Paste These Commands

## Step 1: Create Repository on GitHub

1. Go to: **https://github.com/new**
2. Repository name: `compliance-dashboard`
3. Make it **Public** (so you can share the link)
4. **Don't check anything** (no README, no .gitignore)
5. Click **"Create repository"**

## Step 2: Copy These Commands

After creating the repo, GitHub will show you a URL. It looks like:
```
https://github.com/YOUR_USERNAME/compliance-dashboard.git
```

**Copy that URL**, then open Terminal and run:

```bash
cd "/Users/sadhikarla/Desktop/Compliance dashboard"
```

Then run these commands (replace `YOUR_USERNAME` with your actual GitHub username):

```bash
git remote add origin https://github.com/YOUR_USERNAME/compliance-dashboard.git
git branch -M main
git push -u origin main
```

## That's It!

Your shareable link will be:
```
https://github.com/YOUR_USERNAME/compliance-dashboard
```

---

## OR Use the Automated Script

Just run:
```bash
cd "/Users/sadhikarla/Desktop/Compliance dashboard"
./PUSH_COMMANDS.sh
```

Then paste your GitHub repository URL when asked!

