#!/bin/bash
if [ "$1" = "-m" ]; then
    # Add all changes, commit with the message after -m, and push to current branch
    git add -A && git commit -m "$2" && git push origin $(git symbolic-ref --short HEAD)
fi
