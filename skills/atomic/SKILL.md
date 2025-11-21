---
name: Atomic Commit
description: Atomic Commit helps create clean, atomic commits by analyzing changes, detecting mixed concerns, and ensuring each commit is a complete unit of work. Key words to detect are atomic, atomic commits, clean commits.
---
# Atomic Commit

Standalone skill for non-TDD workflows. Helps create clean, atomic commits by analyzing changes and detecting mixed concerns.

## Atomic Commit Definition
- Does exactly one thing (one feature/fix/refactor)
- Leaves codebase in working state (builds and tests pass)
- Can be reverted independently
- Doesn't mix unrelated concerns

## Workflow

### 1. Analyze Changes
```bash
git status && git diff && git diff --staged
```

### 2. Detect Mixed Concerns
Look for files mixing:
- Multiple features
- Bug fixes + features
- Refactoring + new functionality
- Multiple unrelated bug fixes
- Code + documentation (unless for same feature)
- Tests for multiple features

### 3. Group Commits
Group files by shared purpose. Present grouping to user for confirmation.

Example:
```
Group 1: "Add user auth" → auth/login.ts, auth/session.ts, tests/auth/login.test.ts
Group 2: "Fix password validation" → validators/password.ts, tests/validators/password.test.ts
```

### 4. Create Each Commit
For each group:
1. Stage: `git add <file1> <file2>` (NO `git add .`)
2. Review: `git diff --staged`
3. Test: Run tests, ensure pass
4. Build: Run build if applicable, ensure success
5. Commit: Use conventional commit format
6. Verify: `git log -1 --oneline`

Conventional commit types: `feat|fix|refactor|docs|test|chore|perf|style`

### 5. Final Check
```bash
git log --oneline -n <N>
```

## Issue Integration
- Check user message or branch name for issue number
- IF no issue: ask if user wants to create one
  - IF user does not want to provider, leave it blank
- IF yes: help write description, offer `gh issue create` or `glab issue create`
  - Include in commits: `"feat: description (#42)"`

## Guidelines
**DO:** One logical change, include related tests, run tests, clear messages, issue numbers
**DON'T:** Mix features/fixes/refactors, commit broken code, vague messages, debug code

## TODO Pattern
☐ Analyze: git status/diff
☐ Identify file purposes
☐ Detect mixed concerns
☐ Group into atomic commits
☐ Confirm with user
☐ For each: stage → review → test → build → commit → verify
☐ Final review

## Activation
Use when user says: "atomic", "clean commits", "break down commits", "split commits"
DO NOT use for TDD workflows (use TDG skill).

## Closing
"Created N atomic commits. Tests pass. Would you like to review history, push, or create PR?"
