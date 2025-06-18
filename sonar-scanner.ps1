# SonarQube Scanner PowerShell Script
# Usage: .\sonar-scanner.ps1

Write-Host "🔍 Starting SonarQube Analysis..." -ForegroundColor Cyan

# Set your SonarQube server URL and token
$env:SONAR_HOST_URL = "https://stoxx-sonarqube-887991831954.us-central1.run.app"
$env:SONAR_TOKEN = "your-sonar-token-here"

# Run tests with coverage
Write-Host "📊 Running tests with coverage..." -ForegroundColor Green
pytest --cov=. --cov-report=xml --cov-report=html

# Run SonarQube scanner
Write-Host "🔍 Running SonarQube scanner..." -ForegroundColor Green
sonar-scanner `
  -Dsonar.projectKey=demo-calculator `
  -Dsonar.projectName="Demo Calculator App" `
  -Dsonar.projectVersion=1.0 `
  -Dsonar.sources=. `
  -Dsonar.python.version=3.8 `
  -Dsonar.python.coverage.reportPaths=coverage.xml `
  -Dsonar.exclusions=**/__pycache__/**,**/*.pyc,**/venv/**,**/.venv/** `
  -Dsonar.qualitygate.wait=true

Write-Host "✅ SonarQube analysis completed!" -ForegroundColor Green
Write-Host "📊 View results at: $env:SONAR_HOST_URL" -ForegroundColor Yellow 