#!/usr/bin/env bash
tiddlywiki --output docs --build static
git branch -D docs
git checkout --orphan docs
git reset
git add docs
git commit --message "Generate static site"
git clean -f .
git checkout main
echo "git push --force origin docs"
