# Contributing

We welcome contributions to improve this development environment and learning resource!

## Getting Started

1. Fork the repository
2. Clone your fork locally
3. Create a feature branch: `git checkout -b feature/your-feature`
4. Make your changes
5. Commit with descriptive messages: `git commit -am 'Add feature description'`
6. Push to your fork: `git push origin feature/your-feature`
7. Open a Pull Request

## Contribution Types

### 📝 Documentation
- Fix typos or clarity issues
- Add setup guides for new scenarios
- Improve troubleshooting sections
- Add examples or best practices

### 🐛 Bug Fixes
- Report issues with dev container setup
- Fix configuration problems
- Resolve compatibility issues

### ✨ Enhancements
- Add new extension suggestions
- Improve build automation
- Optimize initialization scripts
- Add Docker Compose services

### 🎓 Lab Content
- Add new test examples
- Create learning guides
- Document common patterns

## Code Guidelines

### Configuration Files
- Use 2-space indentation for JSON
- Keep comments concise
- Test locally before submitting
- Document any new environment variables

### Bash Scripts
- Use `#!/bin/bash` shebang
- Add error handling (`set -e`)
- Include informative echo messages
- Make scripts idempotent (safe to run multiple times)

### Documentation
- Use clear, concise language
- Include code examples
- Test all instructions
- Add links to referenced resources
- Keep formatting consistent

## Testing Your Changes

### Dev Container
```bash
# Test locally with Docker
docker-compose up -d
docker-compose exec app bash

# Run commands
dotnet restore
dotnet build
dotnet test
```

### Codespaces
1. Fork repository
2. Create Codespace
3. Test your changes
4. Verify extensions load
5. Test sample workflow

## Pull Request Process

1. **Describe your changes** - Clear title and description
2. **Reference issues** - Link to related issues
3. **Include context** - Explain why the change is needed
4. **Test thoroughly** - Verify on Codespaces or local container
5. **Keep it focused** - One feature/fix per PR
6. **Update docs** - Include any documentation updates

## Areas for Contribution

### High Priority
- [ ] Better .NET version support
- [ ] Additional test frameworks (NUnit, MSTest)
- [ ] Advanced GitHub Copilot examples
- [ ] Debugging guides

### Nice to Have
- [ ] Performance optimization
- [ ] Additional language support
- [ ] Alternative containerization
- [ ] CI/CD pipeline examples

## Reporting Issues

Use GitHub Issues with clear titles and include:

```markdown
## Description
Brief explanation of the issue

## Steps to Reproduce
1. Step 1
2. Step 2
3. Step 3

## Expected Behavior
What should happen

## Actual Behavior
What actually happened

## Environment
- OS: (Windows/Mac/Linux)
- VS Code version: (e.g., 1.85.0)
- Dev Container: (Codespaces/Local)
- .NET version: (e.g., 9.0)
```

## Code of Conduct

- Be respectful and inclusive
- Assume good intentions
- Focus on issues, not people
- Help others learn

## Questions?

- Check existing documentation in `.devcontainer/README.md`
- Review closed issues for similar questions
- Open a discussion for general questions
- Comment on related issues

## Recognition

Contributors will be acknowledged in:
- Git history (automatic)
- This file (upon request)
- Release notes (for significant contributions)

---

Thank you for contributing! Your help makes this resource better for everyone. 🙏
