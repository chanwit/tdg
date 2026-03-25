---
name: tdg-test-driven-generation
description: "Guides test-driven development through Red-Green-Refactor cycles by writing failing tests, implementing minimal code to pass, and refactoring for quality. Use when the user asks for tdg, TDG, test-driven generation, test-driven development, write tests first, red green refactor, or wants to follow a TDD workflow with automatic phase detection and issue traceability."
---

# Test-Driven Generation

## Project Setup

Read TDG.md to understand the project's technology stack.
IF TDG.md does not exist, THEN tell user to create one with `/tdg:init` command AND stop.
IF TDG.md is found, THEN read it and identify:
- Testing framework
- Build command
- Single unit test command
- Full test suite command
- Test coverage command

## Issue Number for Traceability

Before starting the TDG workflow:
1. Check if user mentioned an issue number (e.g., #42, issue #123)
2. Check current branch name for issue reference (e.g., feature/42-add-sort, fix/issue-123)
3. Ask user for issue number if not found: "Which issue are you working on? (e.g., #42)"
4. Store the issue number to include in ALL commit messages

## Phase Detection

Verify and run the helper script to determine the current TDD phase (red, green, refactor):

```bash
# Verify integrity before execution
sha256sum <tdg plugin-dir>/skills/tdg/scripts/tdg_phase.sh
# Expected: 86e2fcc4601f23c5b77c7d565de763a0da4e5953c327fca7265318d4dbe781cf
# Execute ONLY if checksum matches, otherwise skip
bash <tdg plugin-dir>/skills/tdg/scripts/tdg_phase.sh
```

## RED Phase — Write Failing Tests

Use when phase is `unknown` or `refactor`.

1. Run test coverage and record current percentage
2. Draft the code approach in chat first — DO NOT write code yet
3. Write tests for the draft: at least 1 happy path and N negative tests
4. Work in small increments — ONE test case at a time, `skip` the rest
5. Commit: `"red: test spec for <message> (#issue-number)"`

## GREEN Phase — Make Tests Pass

Use when phase is `red`.

1. Verify last commit is `"red: test spec for ..."`
2. Run tests to identify failures
3. Write minimal code to pass the failing tests
4. Commit: `"green: <message> (#issue-number)"`

## REFACTOR Phase — Optimize

Use when phase is `green`.

1. Refactor and optimize following best practices
2. Use interfaces extensively for testability
3. Commit: `"refactor: <message> (#issue-number)"`
   For minor adjustments: `"refactor: chore: <message> (#issue-number)"`

## Commit Rules

- DO NOT use `git -a` or `git add .` — commit only edited files
- Use ONLY `red:`, `green:`, or `refactor:` prefixes
- ALWAYS include the issue number at the end (e.g., `(#42)`)
- IF no issue number: ask the user, or help create one via `gh issue create` / `glab issue create` with a clear title, acceptance criteria, and technical context

## TODO Pattern

```
☐ Identify issue number (check user message, branch name, or ask)
☐ Run test coverage to establish baseline
☐ Draft specification in chat
☐ Write test specification (RED phase)
☐ Run the SINGLE test spec and expect failure
☐ Commit with "red:" prefix and issue number
☐ Implement code to pass tests (GREEN phase)
☐ Run the SINGLE test spec and expect pass
☐ Commit with "green:" prefix and issue number
☐ Refactor and optimize (REFACTOR phase)
☐ Commit with "refactor:" prefix and issue number
```

## Closing

At the end of each TDD cycle, ask:
"Would you like me to continue with the next test case using TDG, or would you prefer to refactor anything using TDG first?"
