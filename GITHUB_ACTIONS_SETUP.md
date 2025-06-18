# GitHub Actions + SonarQube Integration Setup

This guide will help you set up automatic SonarQube analysis triggered by GitHub pushes and pull requests.

## 🚀 Quick Setup Steps

### **Step 1: Get SonarQube Token**

1. **Access your SonarQube instance:**
   ```
   https://stoxx-sonarqube-m5nf2446cq-uc.a.run.app
   ```

2. **Login with default credentials:**
   - Username: `admin`
   - Password: `admin`
   - **Important:** Change the password on first login!

3. **Generate a token:**
   - Go to **My Account** → **Security** → **Generate Tokens**
   - Name: `github-actions-token`
   - Type: `Global Analysis Token`
   - Copy the generated token (you won't see it again!)

### **Step 2: Create GitHub Repository**

1. **Create a new GitHub repository:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit with SonarQube demo app"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/demo-calculator.git
   git push -u origin main
   ```

### **Step 3: Configure GitHub Secrets**

1. **Go to your GitHub repository**
2. **Navigate to:** Settings → Secrets and variables → Actions
3. **Add these repository secrets:**

   | Secret Name | Value |
   |-------------|-------|
   | `SONAR_TOKEN` | Your SonarQube token from Step 1 |
   | `SONAR_HOST_URL` | `https://stoxx-sonarqube-m5nf2446cq-uc.a.run.app` |

### **Step 4: Create SonarQube Project**

1. **In SonarQube, create a new project:**
   - Project Key: `demo-calculator`
   - Project Name: `Demo Calculator App`
   - Choose: **Use the global setting**

2. **Select analysis method:** `GitHub Actions`

3. **Copy the project key:** `demo-calculator`

## 🔄 How It Works

### **Automatic Triggers:**
- ✅ **Push to `main` branch** → Runs SonarQube analysis
- ✅ **Push to `develop` branch** → Runs SonarQube analysis  
- ✅ **Pull Request to `main`** → Runs SonarQube analysis
- ✅ **Quality Gate check** → Fails PR if quality standards not met

### **What the Workflow Does:**
1. **Checkout code** from GitHub
2. **Setup Python** environment
3. **Install dependencies** from `requirements.txt`
4. **Run tests** with coverage reporting
5. **Execute SonarQube scanner** with coverage data
6. **Wait for Quality Gate** results
7. **Report status** back to GitHub

## 📊 Expected Results

After pushing code, you'll see:

### **In GitHub:**
- ✅ **Green checkmark** if Quality Gate passes
- ❌ **Red X** if Quality Gate fails
- 📊 **Coverage report** in PR comments
- 🔍 **SonarQube link** to detailed analysis

### **In SonarQube:**
- 📈 **Code quality metrics**
- 🐛 **Issues and bugs found**
- 🔒 **Security vulnerabilities**
- 📊 **Test coverage analysis**
- 🔄 **Code duplication detection**

## 🛠️ Manual Testing

### **Test the Setup:**

1. **Make a small change:**
   ```bash
   echo "# Test comment" >> main.py
   git add main.py
   git commit -m "Test SonarQube integration"
   git push
   ```

2. **Check GitHub Actions:**
   - Go to **Actions** tab in your repository
   - Watch the workflow run in real-time

3. **Check SonarQube:**
   - Visit your SonarQube project
   - See the new analysis results

## 🔧 Troubleshooting

### **Common Issues:**

1. **"SonarQube server not accessible"**
   - Check if SonarQube is running
   - Verify the URL in secrets

2. **"Authentication failed"**
   - Regenerate the SonarQube token
   - Update the secret in GitHub

3. **"No coverage data"**
   - Ensure `pytest-cov` is installed
   - Check test files are in the right location

4. **"Quality Gate failed"**
   - Review issues in SonarQube
   - Fix code quality problems
   - Re-run the workflow

## 📈 Next Steps

1. **Customize Quality Gates** in SonarQube
2. **Add more test coverage**
3. **Configure branch protection rules**
4. **Set up Slack/Teams notifications**
5. **Add security scanning**

## 🎯 Demo Workflow

1. **Push code** → Automatic analysis starts
2. **Review results** → Check SonarQube dashboard
3. **Fix issues** → Address code quality problems
4. **Re-push** → See improvements in metrics
5. **Merge PR** → Only if Quality Gate passes

---

**🎉 You're all set!** Your code will now be automatically analyzed by SonarQube on every push and pull request. 