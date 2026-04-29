# Dev Container Configurations

This directory contains multiple configurations for different setup scenarios. Choose the one that fits your needs.

## Quick Reference

| Configuration | Setup Time | Best For | Complexity |
|---------------|-----------|----------|-----------|
| `devcontainer.json` | 2-3 min | GitHub Codespaces (default) | Low |
| `devcontainer-advanced.json` | 5-10 min | Production-like setup | Medium |
| `docker-compose.yml` | 5-10 min | Local Docker setup | Medium |
| `Dockerfile` | Used by both configs | Custom image base | N/A |

---

## 1. devcontainer.json (Recommended for Codespaces)

**Use this for GitHub Codespaces** - it's the default and fastest.

```json
{
  "name": "C# xUnit Testing with GitHub Copilot",
  "image": "mcr.microsoft.com/devcontainers/dotnet:9.0-jammy",
  "customizations": { ... }
}
```

### What it includes:
- ✅ .NET 9.0 official image
- ✅ Git & GitHub CLI
- ✅ C# Dev Kit
- ✅ GitHub Copilot & Copilot Chat
- ✅ Auto-formatting on save
- ✅ NuGet source pre-configured

### How to use in Codespaces:
1. Repository uses this automatically
2. No action needed - just create Codespace
3. Initialization takes 2-3 minutes

---

## 2. devcontainer-advanced.json (Full-Featured)

**Use this for local Dev Containers** - more tools and analyzers.

### What it adds:
- ✅ Test Explorer extension
- ✅ SonarLint code quality analyzer
- ✅ EditorConfig support
- ✅ Custom Dockerfile build
- ✅ Code rulers (80, 120 columns)
- ✅ Enhanced exclusion patterns

### How to use locally:

```bash
# Option A: Copy to default location
cp .devcontainer/devcontainer-advanced.json .devcontainer/devcontainer.json

# Option B: In VS Code Dev Containers menu, select custom config
```

### Initialization:
- First build: 5-10 minutes
- Subsequent: 30 seconds
- More extensions to load

---

## 3. Dockerfile

**Custom Docker image** for both configurations.

```dockerfile
FROM mcr.microsoft.com/devcontainers/dotnet:9.0-jammy
RUN apt-get update && apt-get install -y git curl wget
RUN dotnet nuget add source https://api.nuget.org/v3/index.json -n nuget.org
```

### Features:
- Installs curl, wget, git
- Pre-configures NuGet
- Sets /workspace as working directory

### Usage:
- Automatically used by `devcontainer-advanced.json`
- Can be customized for additional tools

---

## 4. docker-compose.yml

**Docker Compose orchestration** for local development.

```bash
# Start containers
docker-compose up -d

# Open shell
docker-compose exec app bash

# Stop containers
docker-compose down
```

### Configuration:
- Volume mounts for code
- Port forwarding (5000, 5001, 7071)
- Networking setup
- Environment variables configured

### Usage:
```bash
# Build and start
docker-compose up -d

# Execute commands
docker-compose exec app dotnet build
docker-compose exec app dotnet test

# Clean up
docker-compose down
```

---

## 5. post-create.sh

**Runs automatically after container creation.**

```bash
#!/bin/bash
# Configures NuGet
# Restores dependencies
# Displays setup messages
```

### What it does:
1. Adds NuGet source (if not present)
2. Runs `dotnet restore` if project exists
3. Displays setup instructions
4. Ready to use immediately after

---

## 6. init.sh

**Pre-initialization script** (optional enhancement).

Currently a placeholder, can be used for:
- Pre-build setup
- Environment checks
- Directory initialization

---

## Setup Scenarios

### Scenario 1: GitHub Codespaces (Easiest)

```
Repository → Click "Code" → "Codespaces" → "Create codespace on main"
                           ↓
                  Uses devcontainer.json automatically
                           ↓
                      2-3 minutes ready
                           ↓
                  Download lab zip, extract, run tests
```

**Time**: 2-3 min initial + 2-5 min project setup
**Cost**: Free tier available
**Platform**: Browser-based
**Recommendation**: ⭐⭐⭐⭐⭐ Best for learning

---

### Scenario 2: Local Dev Container

```
Prerequisites:
  • Docker Desktop running
  • VS Code installed
  • Dev Containers extension

Workflow:
  git clone repo
     ↓
  code .
     ↓
  Ctrl+Shift+P → "Reopen in Container"
     ↓
  First time: 5-10 min build
  Next time: 30 sec startup
```

**Time**: 5-10 min initial + 30 sec startup
**Cost**: Free (Docker Desktop community edition)
**Platform**: Windows, Mac, Linux
**Recommendation**: ⭐⭐⭐⭐ Good for development

---

### Scenario 3: Local Machine Setup

```
Prerequisites:
  • .NET 9.0 SDK
  • VS Code
  • Git

Workflow:
  Download SDK → Install → Clone repo → Code .
                              ↓
                    dotnet build
                    dotnet test
```

**Time**: 15-30 min (includes SDK download)
**Cost**: Free
**Platform**: Windows, Mac, Linux
**Recommendation**: ⭐⭐⭐ Requires manual setup

---

## Customization Examples

### Add SQL Server
Uncomment in `docker-compose.yml`:
```yaml
sqlserver:
  image: mcr.microsoft.com/mssql/server:2022-latest
  environment:
    SA_PASSWORD: YourPassword123!
    ACCEPT_EULA: "Y"
  ports:
    - "1433:1433"
```

### Add Azure Tools
In `devcontainer.json`, add to extensions:
```json
"ms-dotnettools.csharp",
"ms-vscode.azure-account",
"ms-azuretools.vscode-azurefunctions"
```

### Add Redis
In `docker-compose.yml`:
```yaml
redis:
  image: redis:latest
  ports:
    - "6379:6379"
```

---

## Troubleshooting Configuration

### "Image not found"
```
Error: docker pull failed
Fix: docker-compose pull
     docker-compose build --no-cache
```

### "Permission denied on post-create.sh"
```
Error: bash: .devcontainer/post-create.sh: Permission denied
Fix: chmod +x .devcontainer/post-create.sh
```

### "Port already in use"
```
Error: docker: port 5000 already in use
Fix: docker-compose down
     Change port mapping in docker-compose.yml
```

### "Out of disk space"
```
Error: docker: write file system full
Fix: docker system prune -a
     docker image prune -a
```

---

## Environment Variables

Create `.env` file in repo root (optional):

```bash
# .env
DOTNET_VERSION=9.0
UBUNTU_VARIANT=jammy
DOCKER_BUILDKIT=1
```

Used by docker-compose:
```yaml
version: '3.8'
services:
  app:
    build:
      args:
        VARIANT: ${DOTNET_VERSION}-${UBUNTU_VARIANT}
```

---

## Performance Tips

1. **Codespaces**: Use machine type "4-core" for faster builds
2. **Local Container**: Allocate 4GB+ RAM to Docker
3. **Both**: Close unused applications
4. **Cache**: First build is slower (image download), subsequent are cached

---

## Next Steps

1. Choose your scenario above
2. Follow setup instructions
3. Open the repository in VS Code or Codespaces
4. Download lab zip file
5. Extract and begin lab exercises
6. Use GitHub Copilot to accelerate development

---

## Additional Resources

- [Dev Containers Documentation](https://containers.dev/)
- [VS Code Dev Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- [Docker Documentation](https://docs.docker.com/)
- [GitHub Codespaces Guide](https://docs.github.com/en/codespaces)

---

**Ready? Start with your preferred setup method! 🚀**
