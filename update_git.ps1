# update_git.ps1
# This script stages, commits, and pushes all changes to GitHub

# Customize your commit message here
$commitMessage = Read-Host "Enter commit message"

# Stage all changes
git add .

# Commit changes
git commit -m "$commitMessage"

# Pull latest changes (safe rebase)
git pull origin main --rebase

# Push to GitHub
git push origin main

Write-Host "✅ All changes pushed to GitHub!"
