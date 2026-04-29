name: Feature Request
description: Suggest an improvement or new feature
title: "[FEATURE] "
labels: ["enhancement"]
assignees: []

body:
  - type: textarea
    id: description
    attributes:
      label: Description
      description: Clear description of the feature
      placeholder: "Example: Add support for debugging Azure Functions..."
    validations:
      required: true

  - type: textarea
    id: use_case
    attributes:
      label: Use Case
      description: Why would this be useful?
      placeholder: "This would help because..."
    validations:
      required: true

  - type: textarea
    id: solution
    attributes:
      label: Proposed Solution
      description: How should this work?
      placeholder: "I suggest adding..."

  - type: textarea
    id: alternatives
    attributes:
      label: Alternatives Considered
      description: Other approaches you've considered
      placeholder: "Another option would be..."

  - type: checkboxes
    id: type
    attributes:
      label: Feature Type
      description: What kind of feature is this?
      options:
        - label: Configuration enhancement
        - label: Documentation improvement
        - label: New extension
        - label: New dev tool
        - label: Build automation
        - label: Other
