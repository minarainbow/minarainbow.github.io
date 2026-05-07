# Deployment Guide for New index.html

## Self-Contained Analysis

Your `index.html` is **mostly self-contained**:

### ✅ Self-Contained Elements:
- **All CSS**: Inline in `<style>` tag
- **All JavaScript**: Inline in `<script>` tag
- **Font**: Local file (`assets/fonts/Asap-Regular.ttf`)
- **Images**: All local files in `assets/img/`
- **Favicon**: Local files in `assets/img/`

### ⚠️ External Dependencies:
- **Font Awesome**: CDN link (https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)
  - This is reliable and commonly used, but requires internet connection

### 📝 Missing/Relative PDF References:
Some PDF links use relative paths that may need adjustment:
- `VideoDiff_CamReady.pdf` (line 317)
- `GenAssist-Alt-Text.pdf` (line 383)
- `AVscript-tagged.pdf` (line 395)
- `CHI2022_Cocomix.pdf` (line 407)
- `CHI2022_BlindCosmetics.pdf` (line 422)
- `CSCL2022_duoethnography.pdf` (line 434)

**Recommendation**: Ensure these PDFs exist in the root directory or update paths to `assets/pdf/`.

---

## Deployment Options

### Option 1: Keep Jekyll, Use New index.html (Recommended)

**Pros:**
- No major changes to your existing setup
- Jekyll will process the HTML file as-is
- You can still use Jekyll features for other pages if needed
- GitHub Pages will build automatically

**Steps:**
1. Your `index.html` is already in the root - Jekyll will serve it
2. Ensure all assets (`assets/fonts/`, `assets/img/`, `assets/pdf/`) are committed
3. Push to GitHub - GitHub Pages will build and serve it
4. The new `index.html` will override any Jekyll-generated index

**Note**: Jekyll processes HTML files, but since your `index.html` is already complete HTML, it should work fine. If you want to disable Jekyll processing for this file, add this to the front matter:
```yaml
---
layout: null
---
```

### Option 2: Disable Jekyll Entirely (Static Site)

**Pros:**
- Faster builds (no Jekyll processing)
- Simpler deployment
- No Jekyll dependencies

**Steps:**
1. Create `.nojekyll` file in the root:
   ```bash
   touch .nojekyll
   ```
2. GitHub Pages will serve files statically
3. Your `index.html` will be served as-is

**Cons:**
- You lose Jekyll features (if you use them elsewhere)
- Any Jekyll-specific pages won't work

### Option 3: Create New Repository

**Pros:**
- Clean separation
- Can keep old Jekyll site as backup
- Simpler structure

**Steps:**
1. Create a new GitHub repository (e.g., `minarainbow.github.io-v2`)
2. Copy only necessary files:
   - `index.html`
   - `assets/` folder
   - `.nojekyll` (to disable Jekyll)
   - `CNAME` (if you use custom domain)
3. Set GitHub Pages to serve from this repo

**Cons:**
- Need to update domain settings if using custom domain
- More maintenance overhead

---

## Recommended Approach: Option 3 - Separate Repository (Best for Your Case)

Since you want to **keep your original Jekyll project intact** and deploy the new static site separately, here's the recommended approach:

### Step 1: Create a New Clean Repository

1. **On GitHub**, create a new repository:
   - Name: `minarainbow.github.io` (if you want it as your main site)
   - OR: `minarainbow-static` (if you want to keep the Jekyll one as main)
   - Make it public (required for GitHub Pages)
   - **Don't** initialize with README, .gitignore, or license

2. **On your local machine**, create a new directory and initialize git:
   ```bash
   cd ~/Desktop
   mkdir minarainbow-static  # or whatever name you prefer
   cd minarainbow-static
   git init
   ```

### Step 2: Copy Only Necessary Files

Copy these files from your current Jekyll repo to the new directory:
- `index.html` (your new static site)
- `assets/` folder (fonts, img, pdf)
- `.nojekyll` (to disable Jekyll processing)
- `CNAME` (if you use a custom domain - copy from current repo)

**Commands to copy files:**
```bash
# From your new repo directory
cp /Users/minahuh/Desktop/minarainbow.github.io/index.html .
cp -r /Users/minahuh/Desktop/minarainbow.github.io/assets .
touch .nojekyll  # Create this file to disable Jekyll
# If you have CNAME:
cp /Users/minahuh/Desktop/minarainbow.github.io/CNAME .  # if exists
```

### Step 3: Remove Jekyll Front Matter from index.html

Since we're using `.nojekyll`, remove the front matter:
```bash
# Remove the first 4 lines (---, layout: null, ---, blank line)
sed -i '' '1,4d' index.html
```

### Step 4: Commit and Push

```bash
git add .
git commit -m "Initial commit: Static academic website"
git branch -M main
git remote add origin https://github.com/minarainbow/[REPO-NAME].git
git push -u origin main
```

### Step 5: Enable GitHub Pages

1. Go to your new repository on GitHub
2. Settings → Pages
3. Source: Deploy from a branch
4. Branch: `main` / `/ (root)`
5. Save

Your site will be available at:
- `https://minarainbow.github.io` (if repo name is `minarainbow.github.io`)
- OR `https://minarainbow.github.io/[repo-name]` (if different name)

### Benefits of This Approach:
- ✅ Original Jekyll project remains untouched
- ✅ Clean, minimal repository (only static files)
- ✅ Fast deployment (no Jekyll build needed)
- ✅ Easy to maintain and update
- ✅ Can switch back to Jekyll anytime

---

## Quick Checklist Before Deploying

- [ ] All image files exist in `assets/img/`
- [ ] Font file exists in `assets/fonts/Asap-Regular.ttf`
- [ ] Favicon files exist in `assets/img/`
- [ ] CV PDF exists at `assets/pdf/Huh_Mina_CV.pdf`
- [ ] Other PDF files exist (or update paths in HTML)
- [ ] Test locally by opening `index.html` in a browser
- [ ] Verify Font Awesome CDN loads (requires internet)

---

## Testing Locally

You can test the site locally without Jekyll:

```bash
# Simple Python server
python3 -m http.server 8000

# Or using Node.js http-server
npx http-server

# Then visit http://localhost:8000
```

Or just open `index.html` directly in your browser (some features may not work due to CORS, but layout will be visible).

