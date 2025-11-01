---
description: Initialize TDG configuration for the current project
---

Initialize Test-Driven Generation for this project.

First, check if a `TDG.md` file exists in the current directory.

IF `TDG.md` exists:
- Read it and confirm the build and test commands are properly configured
- Display the current configuration to the user
- Ask if they want to update it

IF `TDG.md` does NOT exist:
- Scan the current project to detect:
  - Programming language (check for package.json, go.mod, requirements.txt, Cargo.toml, etc.)
  - Project type and framework
  - Common build commands for this project type
  - Common test commands and test file patterns
  - Test framework in use (pytest, jest, go test, cargo test, etc.)
- Create a `TDG.md` file with the following structure strictly:

```markdown
# TDG Configuration

## Project Information
- Language: [detected language]
- Framework: [detected framework if any]
- Test Framework: [detected test framework]

## Build Command
[detected or default build command]

## Test Command
[detected or default test command]

## Single Test Command
[detected or default test command to run a single unit test]

## Coverage Command
[detected or default test coverage command]

## Test File Patterns
- Test files: [pattern like *_test.go, test_*.py, *.test.js]
- Test directory: [e.g., tests/, __tests__/]
```

After creating the file:
- Show the user what was detected
- Ask if they want to customize any of the commands
- Explain how to use TDG with this project

If the user provided arguments ($ARGUMENTS), use them as hints for project detection or configuration.
