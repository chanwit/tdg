#!/bin/bash

###########################################
# Part of Test-Driven Generation plugin
###########################################
# TDD Phase Detection Script
# Detects the current TDD phase by checking commit messages for markers:
# - red: (failing test)
# - green: (passing test)
# - refactor: (code improvement)

# Get the most recent commit message
latest_commit=$(git log -1 --pretty=%B 2>/dev/null)

if [ $? -ne 0 ]; then
    echo "unknown"
    exit 1
fi

# Convert to lowercase for case-insensitive matching
commit_lower=$(echo "$latest_commit" | tr '[:upper:]' '[:lower:]')

# Check for phase markers in order of precedence
if echo "$commit_lower" | grep -q "^red:"; then
    echo "red"
    exit 0
elif echo "$commit_lower" | grep -q "^green:"; then
    echo "green"
    exit 0
elif echo "$commit_lower" | grep -q "^refactor:"; then
    echo "refactor"
    exit 0
else
    # If no marker found in latest commit, check more commits
    recent_commits=$(git log -10 --pretty=%B 2>/dev/null)

    if [ $? -ne 0 ]; then
        echo "unknown"
        exit 1
    fi

    recent_lower=$(echo "$recent_commits" | tr '[:upper:]' '[:lower:]')

    # Look for the most recent phase marker
    if echo "$recent_lower" | grep -q "^red:"; then
        echo "red"
        exit 0
    elif echo "$recent_lower" | grep -q "^green:"; then
        echo "green"
        exit 0
    elif echo "$recent_lower" | grep -q "^refactor:"; then
        echo "refactor"
        exit 0
    else
        # No markers found in recent history
        echo "unknown"
        exit 0
    fi
fi
