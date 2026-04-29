# Repository Structure

Complete documentation of the repository layout and file organization.

## Root Level Files

```
copilot-xunit-lab/
├── README.md                    # Main documentation and quick start
├── QUICKSTART.md               # 2-minute setup guide
├── CONTRIBUTING.md             # Contribution guidelines
├── LICENSE                     # MIT License
├── .gitignore                  # Git ignore patterns
├── .editorconfig               # Editor formatting rules
└── ...
```

### Key Root Files

| File | Purpose |
|------|---------|
| `README.md` | Complete project documentation with setup options |
| `QUICKSTART.md` | Fast setup guide (30 seconds to 2 minutes) |
| `CONTRIBUTING.md` | How to contribute to the project |
| `LICENSE` | MIT License (free to use and modify) |
| `.gitignore` | Ignore build artifacts, cache, OS files |
| `.editorconfig` | Consistent formatting across editors |

---

## Dev Container Directory

```
.devcontainer/
├── README.md                   # Configuration guide and comparison
├── devcontainer.json           # Simple Codespaces config (recommended)
├── devcontainer-advanced.json  # Full-featured local config
├── Dockerfile                  # Custom Docker image
├── docker-compose.yml          # Docker Compose orchestration
├── post-create.sh              # Post-creation initialization script
└── init.sh                     # Pre-initialization script
```

### Dev Container Files

| File | Purpose | Usage |
|------|---------|-------|
| `devcontainer.json` | GitHub Codespaces default | Use in Codespaces (automatic) |
| `devcontainer-advanced.json` | Local dev container full setup | Copy to `devcontainer.json` for local use |
| `Dockerfile` | Custom .NET 9.0 image | Used by advanced config |
| `docker-compose.yml` | Docker Compose setup | `docker-compose up -d` |
| `post-create.sh` | Runs after container creation | Auto-executed |
| `init.sh` | Pre-build setup (optional) | Auto-executed |

---

## GitHub Directory

```
.github/
├── ISSUE_TEMPLATE/
│   ├── bug_report.md           # Bug report template
│   └── feature_request.md      # Feature request template
├── workflows/
│   └── validate-config.yml     # CI/CD validation workflow
└── pull_request_template.md    # PR template
```

### GitHub Templates

| File | Purpose |
|------|---------|
| `ISSUE_TEMPLATE/bug_report.md` | Structured bug reporting |
| `ISSUE_TEMPLATE/feature_request.md` | Feature request form |
| `pull_request_template.md` | PR description template |
| `workflows/validate-config.yml` | Automated config validation |

---

## Configuration File Details

### devcontainer.json (Simple)
```json
{
  "name": "C# xUnit Testing with GitHub Copilot",
  "image": "mcr.microsoft.com/devcontainers/dotnet:9.0-jammy",
  "features": { ... },
  "customizations": { ... }
}
```

**Key sections:**
- `name`: Display name in Codespaces
- `image`: Base Docker image (.NET 9.0)
- `features`: Additional dev container features
- `customizations.vscode`: VS Code extensions and settings
- `postCreateCommand`: Runs after container init
- `remoteUser`: Container user (vscode)
- `forwardPorts`: Port mapping (5000, 5001)

### Dockerfile
```dockerfile
FROM mcr.microsoft.com/devcontainers/dotnet:9.0-jammy
RUN apt-get update && apt-get install -y git curl wget
RUN dotnet nuget add source https://api.nuget.org/v3/index.json
WORKDIR /workspace
```

**Features:**
- Based on official .NET 9.0 image
- Installs Git, curl, wget
- Pre-configures NuGet
- Sets workspace directory

### docker-compose.yml
```yaml
version: '3.8'
services:
  app:
    build:
      context: ..
      dockerfile: .devcontainer/Dockerfile
    volumes: ...
    ports: ...
    environment: ...
```

**Features:**
- Volume mounts for code
- Port forwarding
- Environment configuration
- Networking setup

### post-create.sh
```bash
#!/bin/bash
# Runs after container creation
# Configures NuGet, restores dependencies
```

**Tasks:**
1. Adds NuGet source
2. Runs `dotnet restore`
3. Displays setup messages

---

## File Organization by Purpose

### Setup & Configuration
```
.devcontainer/
  ├── devcontainer.json        ← Codespaces
  ├── devcontainer-advanced.json ← Local
  ├── Dockerfile               ← Base image
  └── post-create.sh           ← Initialization
```

### Documentation
```
├── README.md                  ← Full guide
├── QUICKSTART.md              ← Fast start
└── .devcontainer/README.md    ← Configuration guide
```

### Automation
```
.github/
  └── workflows/
      └── validate-config.yml  ← CI/CD
```

### Contribution
```
├── CONTRIBUTING.md            ← Guidelines
└── .github/
    ├── ISSUE_TEMPLATE/        ← Issue forms
    └── pull_request_template.md ← PR form
```

### Project Settings
```
├── .gitignore                 ← Git rules
├── .editorconfig              ← Formatting
└── LICENSE                    ← MIT License
```

---

## Configuration Relationships

```
GitHub Codespaces
       ↓
  devcontainer.json (automatic)
       ↓
  .NET 9.0 official image
       ↓
  Extensions installed
       ↓
  post-create.sh runs
       ↓
  Ready to develop

VS Code Local Container
       ↓
  devcontainer-advanced.json (manual setup)
       ↓
  Dockerfile build
       ↓
  docker-compose.yml (optional)
       ↓
  post-create.sh runs
       ↓
  Ready to develop

Docker Compose
       ↓
  docker-compose.yml
       ↓
  Builds from Dockerfile
       ↓
  Services configured
       ↓
  Containers running
```

---

## Environment Variables

Configurable via `.env` file (not included by default):

```bash
DOTNET_VERSION=9.0
UBUNTU_VARIANT=jammy
DOCKER_BUILDKIT=1
```

---

## Extensions by Configuration

### Simple (devcontainer.json)
- `ms-dotnettools.csharp`
- `ms-dotnettools.vscode-dotnet-runtime`
- `GitHub.copilot`
- `GitHub.copilot-chat`
- `ms-vscode.makefile-tools`

### Advanced (devcontainer-advanced.json)
Above plus:
- `ms-dotnettools.test-explorer`
- `EditorConfig.EditorConfig`
- `sonarsource.sonarlint-vscode`

---

## Settings by Configuration

### Both Configurations
- C# formatter on save
- EditorConfig support
- Roslyn analyzers enabled
- Port forwarding configured

### Advanced Only
- Code rulers (80, 120 chars)
- Enhanced file exclusions
- Additional analyzer rules

---

## Port Mappings

| Port | Service | Purpose |
|------|---------|---------|
| 5000 | HTTP | Web application |
| 5001 | HTTPS | Secure web application |
| 7071 | Azure Functions | Local functions |

---

## Initialization Sequence

### Codespaces Flow
1. Repository cloned
2. `devcontainer.json` detected
3. .NET 9.0 image pulled
4. Container built
5. Features installed
6. Extensions downloaded
7. `post-create.sh` executed
8. **Ready (2-3 minutes)**

### Local Container Flow
1. Repo cloned locally
2. `code .` opens VS Code
3. "Reopen in Container" selected
4. `Dockerfile` built
5. Container started
6. Features installed
7. Extensions downloaded
8. `post-create.sh` executed
9. **Ready (5-10 minutes first time)**

---

## File Sizes & Performance

| File | Size | Impact |
|------|------|--------|
| `devcontainer.json` | ~1KB | Negligible |
| `Dockerfile` | ~300B | Light |
| `docker-compose.yml` | ~800B | Light |
| `post-create.sh` | ~500B | Light |
| Container image | ~1.5GB | Downloaded once |

---

## Customization Points

### Easy (No coding needed)
- Change VS Code extensions in `customizations.vscode.extensions`
- Add environment variables in `.env`
- Modify port mappings in `forwardPorts`
- Update display name in `name` field

### Moderate (Some config needed)
- Add features in `features` section
- Extend `post-create.sh` script
- Add services to `docker-compose.yml`

### Advanced (Requires expertise)
- Modify `Dockerfile` for custom image
- Change base OS image
- Configure complex networking
- Add CI/CD workflows

---

## Maintenance

### Regular Updates
- .NET SDK versions: Update `devcontainer.json`
- Extension versions: VS Code updates automatically
- Docker images: Pull latest in `Dockerfile`
- GitHub Actions: Update workflow YAML

### Version Tracking
- `.devcontainer/devcontainer.json` → Current stable
- `devcontainer-advanced.json` → Feature releases
- `Dockerfile` → Mirrors main config
- Documentation: Updated with each release

---

## Best Practices

1. ✅ Keep configs in `.devcontainer/` directory
2. ✅ Use `post-create.sh` for setup automation
3. ✅ Document changes in README files
4. ✅ Test configurations before pushing
5. ✅ Use GitHub templates for issues/PRs
6. ✅ Validate configs with CI/CD workflow
7. ✅ Keep LICENSE and CONTRIBUTING updated

---

## Related Resources

- [.devcontainer Specification](https://containers.dev/)
- [VS Code Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers)
- [Docker Compose](https://docs.docker.com/compose/)
- [GitHub Workflows](https://docs.github.com/en/actions/using-workflows)

---

## Navigation Guide

**New to this repo?** Start with [QUICKSTART.md](QUICKSTART.md)

**Need full details?** Read [README.md](README.md)

**Setting up locally?** Check [.devcontainer/README.md](.devcontainer/README.md)

**Want to contribute?** See [CONTRIBUTING.md](CONTRIBUTING.md)

---

**Questions? Open an issue with the bug report or feature request template!**
