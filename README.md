# Academic Website

Static academic website built with HTML, CSS, and JavaScript.

## Deployment

This site is deployed via GitHub Pages. Simply push to the `main` branch and it will automatically deploy.

The site will be available at:
- `https://minarainbow.github.io/academic_website/` (or your custom domain if configured)

## Local Development

To test locally:

```bash
python3 -m http.server 8000
# Then visit http://localhost:8000
```

Or using Node.js:

```bash
npx http-server
```

## Files Structure

- `index.html` - Main HTML file (self-contained with inline CSS and JavaScript)
- `assets/` - Contains fonts, images, and PDFs
- `.nojekyll` - Disables Jekyll processing on GitHub Pages
- `CNAME` - Custom domain configuration (if applicable)

