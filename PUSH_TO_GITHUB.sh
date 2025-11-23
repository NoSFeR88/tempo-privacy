#!/bin/bash

# Script to push privacy files to GitHub
# Run this script to upload files to https://github.com/NoSFeR88/tempo-privacy

echo "=================================================="
echo "  TEMPO Privacy Files - Push to GitHub"
echo "=================================================="
echo ""

cd /home/nosfer/proyectos/tempo-privacy

echo "Current status:"
git status
echo ""

echo "Files ready to push:"
git log --oneline -1
echo ""

echo "=================================================="
echo "  Ready to push to GitHub!"
echo "=================================================="
echo ""
echo "The commit is ready. Now you need to push it."
echo ""
echo "Choose your preferred method:"
echo ""
echo "METHOD 1: Push with HTTPS (will ask for username/password or token)"
echo "  git push origin main"
echo ""
echo "METHOD 2: Push with SSH (if you have SSH key configured)"
echo "  git remote set-url origin git@github.com:NoSFeR88/tempo-privacy.git"
echo "  git push origin main"
echo ""
echo "METHOD 3: Use GitHub CLI (if installed)"
echo "  gh auth login"
echo "  git push origin main"
echo ""
echo "=================================================="
echo ""

# Ask user which method they want
read -p "Do you want to try pushing now? (y/n): " answer

if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
    echo ""
    echo "Attempting to push..."
    git push origin main

    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ SUCCESS! Files pushed to GitHub"
        echo ""
        echo "Your privacy pages are now live at:"
        echo "📄 Privacy Policy: https://nosfer88.github.io/tempo-privacy/index.html"
        echo "📄 Terms of Service: https://nosfer88.github.io/tempo-privacy/terms-of-service.html"
        echo "📄 Delete Account: https://nosfer88.github.io/tempo-privacy/delete-account.html"
        echo ""
        echo "⚠️  IMPORTANT: Enable GitHub Pages"
        echo "1. Go to https://github.com/NoSFeR88/tempo-privacy/settings/pages"
        echo "2. Under 'Source', select 'main' branch"
        echo "3. Click 'Save'"
        echo "4. Wait a few minutes for deployment"
        echo ""
    else
        echo ""
        echo "❌ Push failed. Try one of the methods above."
        echo ""
    fi
else
    echo ""
    echo "No problem! You can push manually later using:"
    echo "  cd /home/nosfer/proyectos/tempo-privacy"
    echo "  git push origin main"
    echo ""
fi

echo "=================================================="
echo "  Next Steps After Push:"
echo "=================================================="
echo ""
echo "1. Enable GitHub Pages (see instructions above)"
echo "2. Update privacy_config.dart with real URLs"
echo "3. Update email addresses in HTML files"
echo "4. Test all links in the app"
echo ""
