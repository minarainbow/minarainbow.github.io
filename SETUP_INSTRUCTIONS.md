# Setup Instructions for New Repository

## ✅ What's Already Done

The following files have been copied to `/Users/minahuh/Desktop/academic_website/`:

- ✅ `index.html` - Your new static website
- ✅ `assets/` - All fonts, images, and PDFs
- ✅ `.nojekyll` - Disables Jekyll processing
- ✅ `CNAME` - Custom domain (minahuh.com)
- ✅ `.gitignore` - Ignores system files
- ✅ `README.md` - Repository documentation

## 🚀 Final Steps to Push to GitHub

Since git operations require permissions, please run these commands manually:

```bash
cd /Users/minahuh/Desktop/academic_website

# Initialize git (if not already done)
git init
git branch -M main

# Add all files
git add .

# Commit
git commit -m "Initial commit: Static academic website"

# Connect to your GitHub repository
git remote add origin https://github.com/minarainbow/academic_website.git

# Push to GitHub
git push -u origin main
```

## ⚠️ Important: Original Jekyll Repo

Your original Jekyll repository at `/Users/minahuh/Desktop/minarainbow.github.io/` is **completely untouched**. 

- The `index.html` in the original repo is still there (unchanged)
- All Jekyll files remain intact
- The original repo will continue to work as before

## 📋 After Pushing

1. Go to https://github.com/minarainbow/academic_website
2. Settings → Pages
3. Source: Deploy from a branch
4. Branch: `main` / `/ (root)`
5. Save

Your site will be available at:
- `https://minarainbow.github.io/academic_website/`

If you want to use your custom domain (`minahuh.com`), the `CNAME` file is already included, but you may need to configure DNS settings.

## 🔍 Verify Original Repo is Safe

To double-check your original repo is untouched:

```bash
cd /Users/minahuh/Desktop/minarainbow.github.io
git status
# Should show your original files, nothing committed from the new site
```

