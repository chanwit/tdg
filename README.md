# TDG - Test-Driven Generation Plugin

A Claude Code plugin that brings Test-Driven Development workflows to AI-assisted coding, following the Red-Green-Refactor cycle for systematic code generation.

## About

TDG (Test-Driven Generation) enhances Claude Code with structured workflows for test-driven development. It helps you:

- Follow the Red-Green-Refactor TDD cycle systematically
- Write tests before implementation
- Maintain high test coverage
- Create atomic, well-organized commits
- Track work with issue numbers for full traceability

## Installation

```bash
# Add the TDG marketplace
claude plugin marketplace add chanwit/tdg

# Install the plugin
claude plugin install tdg
```

## Components

### Commands

- `/tdg:init` - Initialize TDG configuration for your project (detects language, framework, test commands)
- `/tdg:version` - Show the current TDG plugin version

### Skills

- **TDG (Test-Driven Generation)** - Complete TDD workflow following Red-Green-Refactor cycles
  - Automatically detects current phase (red/green/refactor)
  - Guides you through writing tests first
  - Ensures commits follow TDD conventions
  - Requires issue number for traceability

- **Atomic Commit** - Create clean, atomic commits for non-TDD workflows
  - Analyzes changes and detects mixed concerns
  - Groups related changes into logical commits
  - Ensures each commit is a complete unit of work
  - Validates tests pass before committing

### Hooks

- Automation hooks (coming soon)

## Usage

### Getting Started

1. Initialize TDG in your project:
```bash
/tdg:init
```

2. Use the TDG skill for test-driven development:
```
Use TDG to implement user authentication
```

3. For organizing existing changes, use the Atomic Commit skill:
```
Create atomic commits for my changes
```

### TDG Workflow

The TDG skill follows a strict Red-Green-Refactor cycle:

1. **Red Phase** - Write failing tests
   - Commits prefixed with `red: test spec for ...`
   - Include issue number: `red: test spec for user login (#42)`

2. **Green Phase** - Implement code to pass tests
   - Commits prefixed with `green: ...`
   - Example: `green: implement user login (#42)`

3. **Refactor Phase** - Optimize and clean up
   - Commits prefixed with `refactor: ...`
   - Example: `refactor: extract auth service (#42)`

## Author

Chanwit Kaewkasi

## License

MIT

## Links

- Repository: https://github.com/chanwit/tdg
