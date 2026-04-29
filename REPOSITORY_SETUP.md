# GitHub Repository Setup Instructions

Complete ready-to-use GitHub repository for the xUnit Testing with GitHub Copilot lab.

## 📦 What You Have

A complete GitHub repository structure at:
```
C:\repos\copilot-xunit-lab\
```

Includes:
- ✅ Dev container configurations (2 variants)
- ✅ Docker setup (Dockerfile + docker-compose)
- ✅ GitHub automation (CI/CD workflows)
- ✅ Issue & PR templates
- ✅ Comprehensive documentation
- ✅ Contribution guidelines
- ✅ License

---

## 🚀 Next Steps: Push to GitHub

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Fill in:
   - **Repository name**: `copilot-xunit-lab` (or your preferred name)
   - **Description**: "Dev container setup for Microsoft Learn xUnit testing lab with GitHub Copilot"
   - **Public/Private**: Choose your preference
   - **Initialize**: Leave unchecked (we have files already)

3. Click "Create repository"

4. Copy the repository URL (HTTPS or SSH)
   ```
   https://github.com/yourusername/copilot-xunit-lab.git
   ```

---

### Step 2: Initialize Local Git Repository

Open PowerShell and run:

```powershell
cd C:\repos\copilot-xunit-lab

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: dev container setup for xUnit testing lab"

# Add remote
git remote add origin https://github.com/yourusername/copilot-xunit-lab.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Done!** Your repository is now on GitHub.

---

### Alternative: Using GitHub CLI

If you have GitHub CLI installed:

```powershell
cd C:\repos\copilot-xunit-lab

# Create repository on GitHub
gh repo create copilot-xunit-lab --public --source=. --remote=origin --push
```

---

## 📋 Repository Contents Checklist

Verify all files are present:

### Root Directory
- [ ] `README.md` - Main documentation
- [ ] `QUICKSTART.md` - 2-minute setup
- [ ] `CONTRIBUTING.md` - Contribution guide
- [ ] `STRUCTURE.md` - File structure docs
- [ ] `LICENSE` - MIT License
- [ ] `.gitignore` - Git ignore rules
- [ ] `.editorconfig` - Formatting rules

### .devcontainer Directory
- [ ] `README.md` - Config documentation
- [ ] `devcontainer.json` - Codespaces config
- [ ] `devcontainer-advanced.json` - Local config
- [ ] `Dockerfile` - Custom image
- [ ] `docker-compose.yml` - Docker Compose
- [ ] `post-create.sh` - Initialization script
- [ ] `init.sh` - Pre-init script

### .github Directory
- [ ] `pull_request_template.md` - PR template
- [ ] `ISSUE_TEMPLATE/bug_report.md` - Bug template
- [ ] `ISSUE_TEMPLATE/feature_request.md` - Feature template
- [ ] `workflows/validate-config.yml` - CI workflow

---

## 🔍 Verify Repository Structure

### List files locally:

```powershell
cd C:\repos\copilot-xunit-lab
tree /F /A
```

### Or use Git:

```powershell
git ls-files
```

---

## 🎯 First-Time Setup Options

### Option A: Use Existing Remote (Recommended)

```powershell
cd C:\repos\copilot-xunit-lab
git remote add origin https://github.com/yourusername/copilot-xunit-lab.git
git branch -M main
git push -u origin main
```

### Option B: Start Fresh

```powershell
# Remove local git
cd C:\repos\copilot-xunit-lab
Remove-Item .git -Recurse -Force

# Create new
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/yourusername/copilot-xunit-lab.git
git push -u origin main
```

---

## 🔐 Authentication

### Using HTTPS Token

```powershell
# When prompted for password, use GitHub Personal Access Token
# Create token at: https://github.com/settings/tokens

git push -u origin main
# Enter: yourusername
# Password: your_github_token
```

### Using SSH (Recommended)

```powershell
# Generate SSH key (if not already done)
ssh-keygen -t ed25519 -C "your.email@example.com"

# Add to GitHub
# https://github.com/settings/keys

# Use SSH remote
git remote set-url origin git@github.com:yourusername/copilot-xunit-lab.git
git push -u origin main
```

---

## ✅ Verify Upload

After pushing:

1. Go to https://github.com/yourusername/copilot-xunit-lab
2. Verify:
   - ✅ All files visible in repo
   - ✅ README.md displays correctly
   - ✅ Commits show in history
   - ✅ Branches show "main"

---

## 🚀 Enable GitHub Features

### Enable GitHub Pages (Optional)

1. Go to repository Settings
2. Scroll to "Pages"
3. Select Source: "Deploy from a branch"
4. Select: main / (root)
5. Save

Now documentation will be available at:
```
https://yourusername.github.io/copilot-xunit-lab/
```

### Enable Actions (For CI/CD)

1. Go to "Actions" tab
2. The workflow should auto-detect
3. Create a commit to trigger validation
4. Check workflow runs successfully

### Protect Main Branch (Optional)

1. Settings → Branches
2. Add rule for "main"
3. Require PR reviews
4. Dismiss stale PR approvals
5. Save

---

## 📊 GitHub Settings Checklist

After pushing, configure:

- [ ] Repository description
- [ ] Add topics: `xunit`, `github-copilot`, `dev-container`, `csharp`
- [ ] Set homepage: (optional)
- [ ] Enable GitHub Pages
- [ ] Add branch protection rules
- [ ] Enable Actions
- [ ] Configure code scanning (optional)

---

## 🎓 Next Steps for Users

Once on GitHub, users can:

### 1. Create Codespace
```
Code → Codespaces → Create codespace on main
```
**Time**: 2-3 minutes, ready to go

### 2. Clone Locally
```powershell
git clone https://github.com/yourusername/copilot-xunit-lab
cd copilot-xunit-lab
code .
# Then: Ctrl+Shift+P → Reopen in Container
```
**Time**: 5-10 minutes with Docker

### 3. Fork & Contribute
```
Fork → Clone → Branch → Commit → Push → PR
```

---

## 📝 Quick Reference Card

Save for users:

```markdown
# Quick Setup

## GitHub Codespaces (Easiest)
1. Fork: https://github.com/yourusername/copilot-xunit-lab
2. Code → Codespaces → Create
3. Download lab zip
4. Extract and run: dotnet test

## Local Dev Container
1. Clone: git clone [URL]
2. Open: code .
3. Reopen in Container
4. Run: dotnet test

## Commands
dotnet build     # Build solution
dotnet test      # Run tests
dotnet restore   # Get dependencies
```

---

## 🐛 Troubleshooting

### Push fails: "Permission denied"

```powershell
# Check authentication
git config user.email "your.email@example.com"
git config user.name "Your Name"

# Use SSH or token authentication
```

### Files not showing on GitHub

```powershell
# Verify files are tracked
git status

# Add any missing files
git add .
git commit -m "Add missing files"
git push
```

### Workflow not running

```powershell
# Check workflow file syntax
# Go to Actions tab and verify
# May need to create a commit to trigger
```

---

## 🎯 Success Criteria

You're done when:
- ✅ Repository visible on GitHub
- ✅ All files present in repo
- ✅ README displays correctly
- ✅ Workflows pass validation
- ✅ Can create Codespace from "Code" button
- ✅ Can clone locally with dev container support

---

## 📚 Useful GitHub Links

- [Creating repositories](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository)
- [GitHub Codespaces](https://docs.github.com/en/codespaces)
- [GitHub Actions](https://docs.github.com/en/actions)
- [Managing branches](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository)

---

## 🎉 You're All Set!

Your repository is ready to:
- ✅ Host xUnit testing lab
- ✅ Support GitHub Codespaces
- ✅ Enable local dev containers
- ✅ Validate configurations
- ✅ Accept contributions

### Share with Users:

```
GitHub: https://github.com/yourusername/copilot-xunit-lab

Quick Start:
1. Fork the repository
2. Create a Codespace or clone locally
3. Download the lab zip file
4. Extract and start learning
```

---

**Need help? Check the README.md or CONTRIBUTING.md files!**
