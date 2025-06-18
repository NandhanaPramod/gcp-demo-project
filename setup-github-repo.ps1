# GitHub Repository Setup Script for SonarQube Demo

Write-Host "Setting up GitHub Repository for SonarQube Demo" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Yellow

# Check if git is installed
try {
    git --version | Out-Null
    Write-Host "Git is installed" -ForegroundColor Green
} catch {
    Write-Host "Git is not installed. Please install Git first." -ForegroundColor Red
    exit 1
}

# Initialize git repository
Write-Host "Initializing Git repository..." -ForegroundColor Green
git init

# Add all files
Write-Host "Adding files to repository..." -ForegroundColor Green
git add .

# Initial commit
Write-Host "Creating initial commit..." -ForegroundColor Green
git commit -m "Initial commit: SonarQube demo calculator app"

# Rename branch to main
Write-Host "Renaming branch to main..." -ForegroundColor Green
git branch -M main

Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Cyan
Write-Host "1. Create a new repository on GitHub:" -ForegroundColor White
Write-Host "   - Go to https://github.com/new" -ForegroundColor Gray
Write-Host "   - Name: demo-calculator" -ForegroundColor Gray
Write-Host "   - Make it Public or Private" -ForegroundColor Gray
Write-Host "   - Don't initialize with README" -ForegroundColor Gray

Write-Host ""
Write-Host "2. Connect your local repo to GitHub:" -ForegroundColor White
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/demo-calculator.git" -ForegroundColor Gray
Write-Host "   git push -u origin main" -ForegroundColor Gray

Write-Host ""
Write-Host "3. Configure GitHub Secrets:" -ForegroundColor White
Write-Host "   - Go to your repo Settings -> Secrets and variables -> Actions" -ForegroundColor Gray
Write-Host "   - Add SONAR_TOKEN (from SonarQube)" -ForegroundColor Gray
Write-Host "   - Add SONAR_HOST_URL: https://stoxx-sonarqube-887991831954.us-central1.run.app" -ForegroundColor Gray

Write-Host ""
Write-Host "4. Create SonarQube Project:" -ForegroundColor White
Write-Host "   - Login to SonarQube: https://stoxx-sonarqube-887991831954.us-central1.run.app" -ForegroundColor Gray
Write-Host "   - Create project: demo-calculator" -ForegroundColor Gray
Write-Host "   - Choose: GitHub Actions" -ForegroundColor Gray

Write-Host ""
Write-Host "See GITHUB_ACTIONS_SETUP.md for detailed instructions!" -ForegroundColor Yellow
Write-Host "Ready to push and test SonarQube integration!" -ForegroundColor Green 