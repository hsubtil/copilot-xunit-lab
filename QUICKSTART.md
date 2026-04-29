# Quick Start Guide

Get started with the xUnit testing lab in **2 minutes**.

## ⚡ Fastest Option: GitHub Codespaces

```
1. Click "Code" → "Codespaces" → "Create codespace on main"
2. Wait 2-3 minutes for environment setup
3. Done! VS Code opens in browser
```

**No installation required. Works anywhere.**

---

## 🚀 30-Second Setup Checklist

- [ ] **Codespace created** → Wait for initialization
- [ ] **Browser opens to VS Code** → Automatic
- [ ] **Extensions installed** → See in left sidebar
- [ ] **Ready to code** → Download lab zip and start

---

## 📥 Getting Lab Files

Once environment is ready:

1. **Download** [AZ2007LabAppM4.zip](https://github.com/MicrosoftLearning/mslearn-github-copilot-dev/raw/refs/heads/main/DownloadableCodeProjects/Downloads/AZ2007LabAppM4.zip)

2. **Extract** to workspace:
   - Right-click zip → Extract All
   - Or use: `unzip AZ2007LabAppM4.zip`

3. **Open folder** in VS Code:
   - File → Open Folder
   - Select `AccelerateDevGHCopilot`

---

## 🏗️ First Test Run

```bash
# In VS Code terminal (Ctrl+`)
cd AccelerateDevGHCopilot

# Build
dotnet build

# Run tests
dotnet test
```

✅ You should see test results!

---

## 🧪 Using Test Explorer

1. Click **beaker icon** (Testing) in left sidebar
2. Expand `UnitTests` folder
3. Click **play button** next to test name
4. See results instantly

---

## 💡 Using GitHub Copilot

### In Chat (Ctrl+L)
```
@workspace Explain the unit test approach in this project
```

### Code Suggestions (Ctrl+I)
Type partial code, let Copilot complete it.

### Quick Help (?)
Hover over code and click lightbulb icon.

---

## 🎯 Lab Tasks

1. **Examine** existing tests → Open `tests/UnitTests/ApplicationCore/`
2. **Create** new test class → Use Agent mode in Chat
3. **Write** test methods → Use Edit mode in Chat
4. **Run** tests → Via Test Explorer
5. **Debug** tests → Set breakpoints and step through

---

## 🔧 Local Setup (Optional)

If you prefer local development:

```bash
# Prerequisites
# - .NET 9.0 SDK (https://dotnet.microsoft.com/download)
# - VS Code (https://code.visualstudio.com)
# - Docker Desktop (for containers)

# Clone this repo
git clone https://github.com/yourusername/copilot-xunit-lab
cd copilot-xunit-lab

# Option A: Dev Container
code .
# Press Ctrl+Shift+P → "Dev Containers: Reopen in Container"

# Option B: Local Machine
dotnet nuget add source https://api.nuget.org/v3/index.json -n nuget.org
dotnet restore
dotnet build
dotnet test
```

---

## 🐛 Troubleshooting

| Problem | Solution |
|---------|----------|
| "Cannot find tests" | Run `dotnet restore` then `dotnet build` |
| "Copilot not working" | Check GitHub Copilot extension is installed |
| "Ports in use" | Restart container or change port numbers |
| "Out of storage" | Delete unused Codespaces |

---

## 📚 Key Commands

```bash
dotnet build                    # Build solution
dotnet test                     # Run all tests
dotnet test --filter "Class"    # Run specific test
dotnet test --verbosity d       # Detailed output
dotnet clean                    # Clean build artifacts
```

---

## 🎓 Learning Path

1. **Understand** - Read test code, use Copilot Chat
2. **Analyze** - Examine existing test patterns
3. **Create** - Use Copilot to generate new tests
4. **Run** - Execute tests and see results
5. **Debug** - Step through code with breakpoints
6. **Extend** - Add more test coverage

---

## 📋 Files You'll Edit

- `tests/UnitTests/ApplicationCore/LoanService/ExtendLoan.cs`
- `tests/UnitTests/ApplicationCore/LoanService/ReturnLoan.cs`
- `tests/UnitTests/ApplicationCore/PatronService/RenewMembership.cs`
- `tests/UnitTests/Infrastructure/JsonLoanRepository/GetLoan.cs` (Create)

---

## ⏱️ Estimated Time

- Setup: **2-3 minutes**
- Download lab: **1-2 minutes**
- Lab completion: **25-30 minutes**
- **Total: ~30-35 minutes**

---

## 🎉 Success Criteria

You'll know you're done when:
- ✅ All tests pass (green checkmarks)
- ✅ You've created GetLoan tests
- ✅ Code compiles without errors
- ✅ You used GitHub Copilot to help write tests

---

## 🚀 Next Steps

1. **Right now**: Start Codespace
2. **In 2 min**: Download lab zip
3. **In 5 min**: Extract and open project
4. **In 10 min**: Run first tests
5. **In 30 min**: Complete lab

---

## 📖 More Help

- [Full Documentation](README.md)
- [Dev Container Configs](.devcontainer/README.md)
- [Lab Instructions](https://microsoftlearning.github.io/mslearn-github-copilot-dev/Instructions/Labs/LAB_AK_04_develop_unit_tests_xunit.html)
- [xUnit Docs](https://xunit.net/)

---

**Ready? Start now! 🎯**

👉 Fork → Create Codespace → Download lab zip → Begin learning
