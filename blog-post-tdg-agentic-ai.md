# Test-Driven Generation: From Human-AI Collaboration to Autonomous Agentic Practice

## The TDD Problem That Chanwit Identified

In his groundbreaking blog post "[Test-Driven Generation (TDG): Adopting TDD again this time with Gen AI](https://chanwit.medium.com/test-driven-generation-tdg-adopting-tdd-again-this-time-with-gen-ai-27f986bed6f8)", Chanwit Kaewkasi identified a fundamental truth about Test-Driven Development:

> "But from my own experiences, I have to admit that TDD is hard!"

Despite being one of the most influential methodologies in software development, TDD suffers from chronic adoption problems. Not because developers don't understand its value, but because it demands:

- **Time to practice and master** the technique
- **Strict discipline** to write tests before code
- **Steep learning curve** for writing effective tests
- **Team-wide buy-in** that's difficult to maintain
- **Significant overhead** in test maintenance

Chanwit proposed Test-Driven Generation (TDG) as a solution: combining TDD, Pair Programming, and Generative AI into a human-AI collaboration model. In this model:

- **The developer acts as a specifier** who provides high-level specifications
- **The AI generates tests** based on those specifications
- **The AI generates code** to pass the tests
- **The developer oversees** and refines the process

This was a brilliant insight: leverage AI to handle the mechanical, discipline-intensive parts of TDD while humans focus on higher-level design and specifications.

## But Then We Discovered Something Profound

As we encoded TDG into a Claude Code skill and shipped it as a plugin, we realized something unexpected:

**TDG isn't just a human-AI collaboration practice. It's actually the ideal autonomous workflow for Agentic AI.**

When you remove the human specifier from the loop and let an AI agent execute the full TDG discipline autonomously, you get something remarkable: **an AI that perfectly executes the TDD discipline that humans have struggled with for decades.**

Think about what makes TDD hard for humans—and perfect for autonomous AI agents:

### The Discipline Problem

**For Humans**: We get impatient. We skip test-writing because "we already know what the code should do." We want to jump straight to implementation.

**For AI Agents**: No impatience. No shortcuts. The agent will write tests first, every single time, without exception.

### The Consistency Problem

**For Humans**: Even experienced TDD practitioners occasionally deviate from Red-Green-Refactor. We're inconsistent, especially under pressure.

**For AI Agents**: Perfect process adherence. The agent follows the cycle with absolute consistency, enforced by phase detection and git commit patterns.

### The Mechanical Overhead Problem

**For Humans**: Writing test cases is tedious. Tracking issues in every commit feels like bureaucracy. Creating atomic commits is time-consuming.

**For AI Agents**: These aren't burdens—they're just rules to follow. The agent tracks issues, creates atomic commits, and maintains test coverage without fatigue.

### The Learning Curve Problem

**For Humans**: Writing good tests is an art that takes years to master.

**For AI Agents**: The agent applies testing patterns consistently, generates happy path and negative tests systematically, and never "forgets" how to write good tests.

## TDG as Claude Code Plugin: AI Practicing TDD on Itself

The TDG plugin doesn't just help humans do TDD—it makes the AI agent itself a disciplined TDD practitioner. Here's what happens when you activate the TDG skill:

### Autonomous Red-Green-Refactor Enforcement

The agent autonomously executes the cycle:

**Red Phase** - Write failing tests first
```bash
# Agent records baseline coverage
# Drafts specification
# Writes test cases (one at a time)
# Commits: "red: test spec for user authentication (#42)"
```

**Green Phase** - Implement to pass
```bash
# Agent runs failing tests
# Writes minimal code to pass
# Commits: "green: implement user authentication (#42)"
```

**Refactor Phase** - Optimize and clean
```bash
# Agent refactors following best practices
# Ensures maintainability
# Commits: "refactor: extract auth service (#42)"
```

### Built-in Phase Detection

The plugin includes a phase detection script that uses git commit history to enforce discipline:

```bash
# Verifies integrity with sha256sum
sha256sum tdg_phase.sh
# 86e2fcc4601f23c5b77c7d565de763a0da4e5953c327fca7265318d4dbe781cf

# Detects current phase
bash tdg_phase.sh
# Returns: "red", "green", "refactor", or "unknown"
```

The agent **cannot skip phases**. It won't write implementation code without tests first. It won't refactor before tests pass. The discipline is encoded and enforced.

### Mandatory Traceability

Every single commit requires an issue number:

```bash
red: test spec for login validation (#42)
green: implement login validation (#42)
refactor: extract validation logic (#42)
```

If there's no issue, the agent will help create one—reverse engineering requirements from the work being done. Humans forget to do this. AI agents never do.

### Atomic Commits by Default

The agent never uses `git add .` or `git -a`. It only commits files it has edited, creating clean, atomic commits that:
- Do exactly one thing
- Leave the codebase in a working state
- Can be reverted independently
- Don't mix unrelated concerns

## The Evolution of TDG

Looking back, we can see the evolution:

**TDD (Classic)**
- Human writes tests
- Human writes code
- Human refactors
- **Problem**: Requires immense discipline humans struggle to maintain

**TDG (Chanwit's Vision)**
- Human provides specifications
- AI generates tests
- AI generates code
- Human oversees and refines
- **Benefit**: Reduces cognitive load, but still requires human discipline

**TDG Plugin (Agentic Practice)**
- AI agent autonomously executes full Red-Green-Refactor cycle
- AI agent enforces phase discipline via git
- AI agent maintains perfect traceability
- Human simply requests features
- **Breakthrough**: The discipline is encoded and autonomous

## Addressing TDD's Problems—Completely

Chanwit identified how TDG addresses TDD's problems through human-AI collaboration. The TDG plugin goes further by making the AI fully autonomous:

### Slower Initial Development
**TDD Problem**: Writing tests first adds overhead.
**Chanwit's TDG**: AI generates tests quickly from specs.
**TDG Plugin**: AI agent generates tests AND maintains the discipline without any human overhead.

### Test Maintenance
**TDD Problem**: Test suites become burdensome to maintain.
**Chanwit's TDG**: AI can adjust tests when specs change.
**TDG Plugin**: AI agent maintains test coverage systematically, treating it as a first-class constraint.

### Steep Learning Curve
**TDD Problem**: Writing good tests takes years to learn.
**Chanwit's TDG**: AI handles test generation complexity.
**TDG Plugin**: AI agent applies testing patterns consistently, never degrading in quality.

### Requires Discipline
**TDD Problem**: Teams struggle to maintain TDD discipline.
**Chanwit's TDG**: AI provides consistent test generation.
**TDG Plugin**: AI agent embodies the discipline itself—phase detection, git patterns, issue tracking, and atomic commits are all automated and enforced.

## Why This Matters

We've spent decades trying to make humans better at TDD. We've written books, created training programs, built linters and test frameworks. And still, TDD adoption remains low.

With Agentic AI and the TDG plugin, we're not trying to make humans better at TDD anymore. We're letting AI agents do what they do naturally: follow processes with perfect discipline, every single time.

This isn't about AI "helping" with TDD. It's about recognizing that **TDG is the native practice of Agentic AI**.

## Getting Started

```bash
# Add the TDG marketplace
claude plugin marketplace add chanwit/tdg

# Install the plugin
claude plugin install tdg

# Initialize in your project
/tdg:init

# Start using TDG
"Use TDG to implement user authentication"
```

The AI agent will:
- Ask for the issue number (or help create one)
- Run test coverage to establish baseline
- Write test specifications (red phase)
- Commit with proper phase prefix
- Implement code (green phase)
- Commit when tests pass
- Refactor and optimize (refactor phase)
- Ask if you want to continue

All with perfect discipline. Every single time.

## The Future is Autonomous

Chanwit Kaewkasi's insight about TDG was profound: TDD's difficulty could be solved through human-AI collaboration. But the TDG plugin reveals something even more fundamental:

**Test-Driven Generation is what AI agents do naturally when given the right structure.**

The discipline that humans struggle with—write tests first, follow the cycle, track everything, commit atomically—is trivial for AI agents. It's not a burden. It's just the workflow.

We don't need to train humans to be better at TDD anymore. We need to let AI agents practice TDG autonomously, with the discipline and consistency they were born to execute.

---

**Credits**: Test-Driven Generation was conceived by [Chanwit Kaewkasi](https://chanwit.medium.com/). The TDG Claude Code plugin encodes his vision as an autonomous agentic practice.

**Try TDG today**: [github.com/chanwit/tdg](https://github.com/chanwit/tdg)

**Read Chanwit's original post**: [Test-Driven Generation (TDG): Adopting TDD again this time with Gen AI](https://chanwit.medium.com/test-driven-generation-tdg-adopting-tdd-again-this-time-with-gen-ai-27f986bed6f8)
