#!/bin/bash

# SonarQube Scanner Script
# Usage: ./sonar-scanner.sh

echo "🔍 Starting SonarQube Analysis..."

# Set your SonarQube server URL and token
export SONAR_HOST_URL="https://stoxx-sonarqube-887991831954.us-central1.run.app"
export SONAR_TOKEN="your-sonar-token-here"

# Run tests with coverage
echo "📊 Running tests with coverage..."
pytest --cov=. --cov-report=xml --cov-report=html

# Run SonarQube scanner
echo "🔍 Running SonarQube scanner..."
sonar-scanner \
  -Dsonar.projectKey=demo-calculator \
  -Dsonar.projectName="Demo Calculator App" \
  -Dsonar.projectVersion=1.0 \
  -Dsonar.sources=. \
  -Dsonar.python.version=3.8 \
  -Dsonar.python.coverage.reportPaths=coverage.xml \
  -Dsonar.exclusions=**/__pycache__/**,**/*.pyc,**/venv/**,**/.venv/** \
  -Dsonar.qualitygate.wait=true

echo "✅ SonarQube analysis completed!"
echo "📊 View results at: $SONAR_HOST_URL" 