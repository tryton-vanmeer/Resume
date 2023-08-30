#!/bin/sh

if [ "$(git status -s)" ]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old build"
rm -rf output
git worktree prune
rm -rf .git/worktree/output

echo "Checking out gh-pages branch into output"
git worktree add -B gh-pages output origin/gh-pages

echo "Removing existing files"
rm -rf output/*

echo "Building resume"
just
cp public/* output/

echo "Updating gh-pages branch"
cd output && git add --all && git commit -m "Publishing to gh-pages (deploy.sh)"

echo "Pushing to GitHub"
git push origin gh-pages

echo "Cleanup"
cd .. && rm -rf output
