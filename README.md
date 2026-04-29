# GitHub Copilot xUnit Testing Lab

Complete development environment setup for the Microsoft Learn lab: **"Develop unit tests using GitHub Copilot"** with xUnit, NSubstitute, and .NET 9.0.

[![GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new)

## 🚀 Quick Start

### GitHub Codespaces (Recommended)
1. Fork this repository
2. Click **"Code"** → **"Codespaces"** → **"Create codespace on main"**
3. Wait 2-3 minutes for initialization
4. Download the lab zip: [AZ2007LabAppM4.zip](https://github.com/MicrosoftLearning/mslearn-github-copilot-dev/raw/refs/heads/main/DownloadableCodeProjects/Downloads/AZ2007LabAppM4.zip)
5. Extract files into the Codespace workspace
6. Run tests: `dotnet build && dotnet test`

### Local Dev Container
```bash
# Prerequisites: Docker Desktop, VS Code, Dev Containers extension

git clone https://github.com/yourusername/copilot-xunit-lab
cd copilot-xunit-lab
code .
# Press Ctrl+Shift+P → "Dev Containers: Reopen in Container"
```

### Local Machine
```bash
# Install .NET 9.0 SDK from https://dotnet.microsoft.com/download
dotnet nuget add source https://api.nuget.org/v3/index.json -n nuget.org
dotnet restore
dotnet build
dotnet test
```

---

## 📋 What's Included

### Environment
- ✅ **.NET 9.0 SDK** - Latest .NET framework
- ✅ **GitHub Copilot** - AI-powered code assistance
- ✅ **GitHub Copilot Chat** - Interactive chat interface
- ✅ **C# Dev Kit** - Full IDE experience
- ✅ **xUnit Framework** - Testing framework
- ✅ **NSubstitute** - Mocking library

### Dev Container Configurations
- **devcontainer.json** - Simple, fast setup (Recommended)
- **devcontainer-advanced.json** - Full-featured with extras
- **docker-compose.yml** - Local Docker orchestration
- **Dockerfile** - Custom image with pre-configured tools

### Documentation
- **README.md** - This file
- **.devcontainer/README.md** - Detailed setup guide
- **.devcontainer/SETUP_GUIDE.md** - Configuration comparison

---

## 📚 Lab Overview

This lab teaches you to:
1. Set up a C# xUnit testing project
2. Examine existing unit test approaches
3. Use GitHub Copilot to extend test coverage
4. Test data access classes with JSON repositories
5. Use Test Explorer to run and debug tests

### Project Structure
```
AccelerateDevGHCopilot/
├── src/
│   ├── Library.ApplicationCore/      (Business logic)
│   ├── Library.Console/              (Console app + JSON data)
│   └── Library.Infrastructure/       (Data access)
└── tests/
    └── UnitTests/                    (xUnit tests)
        ├── ApplicationCore/
        │   ├── LoanService/
        │   └── PatronService/
        └── Infrastructure/
            └── JsonLoanRepository/
```

---

## 🛠️ Key Commands

```bash
# Build the solution
dotnet build

# Run all tests
dotnet test

# Run specific test project
dotnet test tests/UnitTests/UnitTests.csproj

# Run with verbose output
dotnet test --verbosity detailed

# Run specific test class
dotnet test --filter "ClassName"

# Run with code coverage
dotnet test /p:CollectCoverage=true

# Clean build artifacts
dotnet clean

# Restore dependencies
dotnet restore
```

---

## 🧪 Testing Technologies

### xUnit
- Fact-based testing framework
- Async task support
- Display names for clarity
- Built-in assertion methods

Example:
```csharp
[Fact(DisplayName = "GetLoan: Returns loan when found")]
public async Task GetLoan_ReturnsLoanWhenFound()
{
    // Arrange
    var loanId = 1;
    
    // Act
    var result = await _repository.GetLoan(loanId);
    
    // Assert
    Assert.NotNull(result);
    Assert.Equal(loanId, result?.Id);
}
```

### NSubstitute
- Intuitive mocking library
- Minimal setup
- Fluent API

Example:
```csharp
var mockRepository = Substitute.For<ILoanRepository>();
mockRepository.GetLoan(1).Returns(expectedLoan);
```

---

## 🤖 GitHub Copilot Integration

### Chat Mode
```
@workspace Explain the approach to unit testing in this codebase.
```

### Agent Mode
Let Copilot autonomously create test classes and project structure.

### Edit Mode
Update selected files with Copilot suggestions.

### Code Completion
Type partial code and let Copilot suggest implementations.

---

## 📁 Configuration Files

### `.devcontainer/devcontainer.json` (Simple)
- Lightweight setup
- Essential extensions only
- Fast initialization (~2-3 min)
- **Use this by default**

### `.devcontainer/devcontainer-advanced.json` (Full-Featured)
- All development tools
- Code quality analyzers
- Complete extension suite
- Longer initialization (~5-10 min)

### `.devcontainer/Dockerfile`
- Custom .NET 9.0 image
- Pre-configured NuGet
- Git and CLI tools included

### `.devcontainer/docker-compose.yml`
- Docker Compose orchestration
- Volume mounts
- Port forwarding
- Network configuration

---

## ⚙️ Configuration Features

- ✅ Auto C# formatting on save
- ✅ EditorConfig support
- ✅ Roslyn code analyzers
- ✅ NuGet source pre-configured
- ✅ Port forwarding (5000, 5001)
- ✅ Git integration
- ✅ GitHub CLI included

---

## 🐛 Troubleshooting

### "Dev container build takes too long"
- First build is normal (5-10 min)
- Rebuilds are faster (30 sec)
- Check Docker Desktop is running

### "Extensions not installed"
```bash
# Rebuild container
Ctrl+Shift+P → "Dev Containers: Rebuild Container"
```

### "Cannot find tests"
```bash
# Ensure correct project structure and run:
dotnet restore
dotnet build
dotnet test --list-tests
```

### "JSON data files not found"
- Add ItemGroup to UnitTests.csproj:
```xml
<ItemGroup>
    <None Include="..\..\src\Library.Console\Json\**\*">
        <Link>Json\%(RecursiveDir)%(FileName)%(Extension)</Link>
        <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
    </None>
</ItemGroup>
```

---

## 📖 Resources

- [Lab Instructions](https://microsoftlearning.github.io/mslearn-github-copilot-dev/Instructions/Labs/LAB_AK_04_develop_unit_tests_xunit.html)
- [xUnit Documentation](https://xunit.net/)
- [NSubstitute Documentation](https://nsubstitute.github.io/)
- [GitHub Copilot Docs](https://docs.github.com/en/copilot)
- [Dev Containers Spec](https://containers.dev/)
- [.NET 9 Documentation](https://learn.microsoft.com/en-us/dotnet/)

---

## 🔧 System Requirements

### Codespaces (Recommended)
- GitHub account
- Web browser
- No local installation needed

### Local Dev Container
- Docker Desktop (4.0+)
- VS Code (1.76+)
- Dev Containers extension
- 4GB+ free disk space

### Local Machine
- Windows, Mac, or Linux
- .NET 9.0 SDK
- VS Code or Visual Studio
- Git 2.48+

---

## 📝 Lab Workflow

1. **Setup** - Initialize dev environment
2. **Download** - Get lab zip file
3. **Extract** - Place files in workspace
4. **Explore** - Examine existing tests
5. **Extend** - Create new test classes
6. **Implement** - Write test methods
7. **Run** - Execute tests via Test Explorer
8. **Debug** - Use breakpoints and step through code

---

## 🎓 Learning Outcomes

By completing this lab, you'll learn:
- ✅ How to write effective unit tests
- ✅ xUnit framework features and best practices
- ✅ Mocking dependencies with NSubstitute
- ✅ Using GitHub Copilot for test development
- ✅ Testing data access layers
- ✅ Running and debugging tests
- ✅ Code coverage and quality metrics

---

## 📞 Support

For issues or questions:
1. Check [Troubleshooting](#-troubleshooting) section
2. Review [Lab Documentation](https://microsoftlearning.github.io/mslearn-github-copilot-dev/Instructions/Labs/LAB_AK_04_develop_unit_tests_xunit.html)
3. Visit [GitHub Issues](https://github.com/yourusername/copilot-xunit-lab/issues)
4. Check framework documentation links above

---

## 📄 License

This repository contains learning materials for the Microsoft Learn platform. See LICENSE file for details.

---

## 🙏 Credits

- Based on Microsoft Learn: [Develop unit tests using GitHub Copilot](https://microsoftlearning.github.io/mslearn-github-copilot-dev/)
- Dev Container specs: [containers.dev](https://containers.dev/)
- xUnit framework: [xunit.net](https://xunit.net/)

---

**Get started now! Choose your setup method above and begin learning. 🚀**
