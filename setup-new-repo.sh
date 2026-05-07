#!/bin/bash

# Script to set up a new static repository from the current Jekyll project
# Usage: ./setup-new-repo.sh [new-repo-directory-name]

NEW_REPO_NAME=${1:-"minarainbow-static"}
CURRENT_DIR="/Users/minahuh/Desktop/minarainbow.github.io"
NEW_REPO_PATH="/Users/minahuh/Desktop/$NEW_REPO_NAME"

echo "🚀 Setting up new static repository: $NEW_REPO_NAME"
echo ""

# Create new directory
echo "📁 Creating new directory..."
mkdir -p "$NEW_REPO_PATH"
cd "$NEW_REPO_PATH"

# Initialize git
echo "🔧 Initializing git repository..."
git init

# Copy necessary files
echo "📋 Copying files..."
cp "$CURRENT_DIR/index.html" .
cp -r "$CURRENT_DIR/assets" .
cp "$CURRENT_DIR/CNAME" . 2>/dev/null || echo "⚠️  No CNAME file found (you may need to add it manually)"

# Remove Jekyll front matter from index.html (first 4 lines)
echo "🔨 Removing Jekyll front matter from index.html..."
sed -i '' '1,4d' index.html

# Create .nojekyll file
echo "📝 Creating .nojekyll file..."
touch .nojekyll

# Create README
cat > README.md << EOF
# Academic Website

Static academic website built with HTML, CSS, and JavaScript.

## Deployment

This site is deployed via GitHub Pages. Simply push to the \`main\` branch and it will automatically deploy.

## Local Development

To test locally:

\`\`\`bash
python3 -m http.server 8000
# Then visit http://localhost:8000
\`\`\`
EOF

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub (e.g., $NEW_REPO_NAME)"
echo "2. Run these commands:"
echo ""
echo "   cd $NEW_REPO_PATH"
echo "   git add ."
echo "   git commit -m 'Initial commit: Static academic website'"
echo "   git branch -M main"
echo "   git remote add origin https://github.com/minarainbow/[REPO-NAME].git"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages in repository settings"
echo ""

