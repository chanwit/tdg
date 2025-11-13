# Test-Driven Generation: The Practice AI Agents Were Born to Execute

## The Paradox of TDD

For decades, Test-Driven Development (TDD) has been the gold standard of disciplined software engineering. Write the test first. Watch it fail. Write just enough code to make it pass. Refactor. Repeat. The Red-Green-Refactor mantra has been drilled into developers worldwide.

Yet, despite its proven benefits, TDD adoption remains frustratingly low. Studies consistently show that while most developers acknowledge TDD's value, few practice it religiously. Why? Because TDD demands a level of discipline, patience, and systematic thinking that runs counter to human nature. We want to jump straight to solutions. We get excited about implementation. We find the ceremony tedious.

## Enter Test-Driven Generation

Chanwit Kaewkasi's Test-Driven Generation (TDG) takes the TDD methodology and reveals a profound insight: **TDG isn't really a practice for humans—it's the natural workflow for Agentic AI.**

Think about it. What makes TDD hard for humans makes it perfect for AI agents:

- **Unwavering Discipline**: AI agents don't get impatient. They won't skip the test-writing phase because "they already know what the code should do."
- **Perfect Process Adherence**: An AI agent will follow the Red-Green-Refactor cycle with absolute consistency, every single time.
- **Systematic Exploration**: AI agents excel at methodically working through test cases—one happy path, N negative tests—without getting bored or cutting corners.
- **Traceability Obsession**: Humans forget to link commits to issues. AI agents can enforce issue number tracking in every single commit without fail.
- **Atomicity by Nature**: Breaking work into atomic commits isn't tedious for an AI—it's just another rule to follow perfectly.

## TDG as Claude Code Plugin

Recognizing this natural fit, we've encoded the entire TDG practice as a Claude Code skill and shipped it as a plugin. What was once a discipline that required constant human vigilance is now a workflow that AI agents execute flawlessly.

### The TDG Workflow

When you activate the TDG skill in Claude Code, the agent:

1. **Red Phase** - Writes comprehensive test specifications first
   - Records baseline test coverage
   - Drafts the specification before writing any code
   - Focuses on one test case at a time
   - Commits with: `red: test spec for <feature> (#issue)`

2. **Green Phase** - Implements just enough to pass
   - Runs tests to identify failures
   - Writes minimal code to make tests pass
   - Commits with: `green: <implementation> (#issue)`

3. **Refactor Phase** - Optimizes and cleans
   - Applies best practices and design patterns
   - Ensures code maintainability
   - Commits with: `refactor: <improvement> (#issue)`

### Built-in Safeguards

The TDG skill includes sophisticated phase detection—using git commit history to understand where you are in the cycle and what should come next. It won't let you write implementation code without tests first. It won't let you refactor before the tests pass. It enforces the discipline that humans struggle to maintain.

```bash
# The plugin verifies phase integrity
bash tdg_phase.sh
# Returns: "red", "green", "refactor", or "unknown"
```

### Issue-Driven Development

One of TDG's most powerful features is mandatory issue tracking. Every commit must reference an issue number for full traceability. If you don't have an issue, the agent will help you create one—reverse engineering a precise issue description from the work being done, complete with:

- Clear title summarizing the feature/fix
- Acceptance criteria based on the tests
- Technical context from the implementation

## Why This Matters

We're witnessing a fundamental shift in software development. The practices that worked best for human discipline turn out to be the practices that AI agents execute perfectly. TDG isn't just TDD with a new name—it's TDD reimagined for an agentic future.

With the TDG Claude Code plugin, you get:

- **100% TDD compliance** without the mental overhead
- **Complete traceability** from issue to test to implementation
- **Atomic commits** that tell a clear story
- **Systematic test coverage** that actually gets written
- **Refactoring confidence** backed by comprehensive tests

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

## The Future is Disciplined

For years, we've told developers they should practice TDD. Now, with Agentic AI and TDG, we can simply let the AI do what it does best: follow the discipline perfectly, every time.

Test-Driven Generation isn't about making humans better at TDD. It's about recognizing that AI agents were born to execute it flawlessly—and giving them the tools to do exactly that.

---

**About the Author**: Chanwit Kaewkasi developed Test-Driven Generation to bridge the gap between TDD theory and Agentic AI practice.

**Try it today**: [github.com/chanwit/tdg](https://github.com/chanwit/tdg)
