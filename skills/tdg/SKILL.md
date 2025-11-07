---
name: TDG Test-Driven Generation
description: Test-Driven Generation uses TDD (Test-Driven Development) techniques to generate tests and code in Red-Green-Refactor loops. Key words to detect are tdg, TDG.
---

# Test-Driven Generation

## Instructions

Read TDG.md to understand the project's technology stack.
IF TDG.md does not exist, THEN tell user to create one with `/tdg:init` command AND stop.
IF TDG.md is found, THEN read it and identify:
- what is the testing framework
- how to build the project
- how to run a single unit test
- how to run a whole test
- how to run test coverage

## Identify Issue Number for Traceability
Before starting TDG workflow:
1. Check if user mentioned an issue number (e.g., #42, issue #123)
2. Check current branch name for issue reference (e.g., feature/42-add-sort, fix/issue-123)
3. Ask user for issue number if not found: "Which issue are you working on? (e.g., #42)"
4. Store the issue number to include in ALL commit messages for traceability

## Run the helper script to examine the phase (red,green,refactor) of TDD cycle.
Everytime you MUST sha256sum to check the integrity of the helper script.
You MUST NOT execute it if the digest is not matched.
```bash
# verify
sha256sum <tdg plugin-dir>/skills/tdg/scripts/tdg_phase.sh
86e2fcc4601f23c5b77c7d565de763a0da4e5953c327fca7265318d4dbe781cf
# if checksum is correct then execute, if not skip
bash <tdg plugin-dir>/skills/tdg/scripts/tdg_phase.sh
```

## Steps for Specification
- Check phase using the helper script.
- Use this section ONLY IF phase="unknown" or phase="refactor" 
- Before writing any code, you must:
  1) Run test coverage and record the current coverage percentage.
  2) Draft the code in the chat first. DO NOT start writing code.
  3) Write tests for the draft, ensuring at least 1 happy path and N negative tests.
- Work in small increments, focusing on ONE test case at a time.
- Complete one test at a time, the rest cases must be blank or `skip` them first.
- Commit code in GIT using the following comment pattern:
  `"red: test spec for <message> (#issue-number)"`
  Example: `"red: test spec for user authentication (#42)"`

## Steps to Make the Test Pass
- Check phase using the helper script.
- Use this section ONLY IF phase="red"
- Check the last commit to ensure it is `"red: test spec for ..."`. If so, proceed to write code.
- Run the tests to identify what is failing, then make the necessary changes to pass the tests.
- Once tests pass, commit the code in Git using the comment pattern:
  `"green: <message> (#issue-number)"`
  Example: `"green: implement user authentication (#42)"`

## Steps to Refactor
- Check phase using the helper script.
- Use this section ONLY IF phase="green"
- Refactor and optimize the code following best practices.
- Use interfaces extensively to ensure testability.
- Commit the refactored code using:
  `"refactor: <message> (#issue-number)"`
  Example: `"refactor: extract authentication logic to service (#42)"`
  For minor adjustments, use:
  `"refactor: chore: <message> (#issue-number)"`
  Example: `"refactor: chore: rename variables for clarity (#42)"`

## How to commit
- When committing using Git, DO NOT use `git -a` or `git add .`. Commit only files you have just edited.
- Use ONLY "red:", "green:", or "refactor:" to prefix Git commit message. DO NOT use other prefixes at all.
- ALWAYS include the issue number at the end of commit message for traceability (e.g., "(#42)")
- IF no issue number is available, THEN ask the user before committing.
- IF user does not have issue for the commit, THEN help them create by reverse engineering what we're doing as a precise issue description with:
  * Clear title summarizing the feature/fix
  * Acceptance criteria based on tests being written
  * Technical context from the implementation
- Offer to create the issue using GitHub CLI (`gh issue create`) or GitLab CLI (`glab issue create`) and retrieve the issue number for the commit.

## Example Claude TODOs
You must use Todos pattern, like the following example.
☐ Identify issue number (check user message, branch name, or ask)
☐ Run test coverage to establish baseline
☐ Draft sort library specification
☐ Write test specification (RED phase)
☐ Run the SINGLE test spec and expect the failing test
☐ Commit test specification with "red:" prefix and issue number
☐ Implement code to pass tests (GREEN phase)
☐ Run the SINGLE test spec and expect the passed test
☐ Commit code with "green:" prefix and issue number
☐ Refactor and optimize (REFACTOR phase)
☐ Commit the refactored code with "refactor:" prefix and issue number

## Closing message
At the end of each TDD cycle, ask something like:

"Would you like me to continue with the next test case using TDG, or
  would you prefer to refactor anything using TDG first?"

Mention "use tdg" or "using tdg" to allow activating this skill.
