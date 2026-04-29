name: Bug Report
description: Report a problem with the dev container setup or configuration
title: "[BUG] "
labels: ["bug"]
assignees: []

body:
  - type: textarea
    id: description
    attributes:
      label: Description
      description: Clear description of the bug
      placeholder: "Example: Dev container fails to build on Windows..."
    validations:
      required: true

  - type: textarea
    id: steps
    attributes:
      label: Steps to Reproduce
      description: Steps to reproduce the issue
      placeholder: |
        1. Create Codespace
        2. Wait for initialization
        3. Error occurs...
    validations:
      required: true

  - type: textarea
    id: expected
    attributes:
      label: Expected Behavior
      description: What should happen
      placeholder: "Container should initialize successfully..."
    validations:
      required: true

  - type: textarea
    id: actual
    attributes:
      label: Actual Behavior
      description: What actually happened
      placeholder: "Container failed with error..."
    validations:
      required: true

  - type: textarea
    id: error
    attributes:
      label: Error Message or Logs
      description: Any error messages or log output
      render: shell

  - type: dropdown
    id: environment
    attributes:
      label: Environment
      description: Where are you running this?
      options:
        - GitHub Codespaces
        - Local Dev Container (Windows)
        - Local Dev Container (Mac)
        - Local Dev Container (Linux)
        - Local Machine
    validations:
      required: true

  - type: input
    id: os
    attributes:
      label: Operating System
      description: Your OS version
      placeholder: "Windows 11, macOS 13, Ubuntu 22.04, etc."

  - type: input
    id: versions
    attributes:
      label: Software Versions
      description: Relevant versions
      placeholder: "Docker 4.20, VS Code 1.85, etc."

  - type: textarea
    id: additional
    attributes:
      label: Additional Context
      description: Any other context that might help
