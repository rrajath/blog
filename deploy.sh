#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo -t ezhil # if using a theme, replace with `hugo -t <YOURTHEME>`

# Copy public folder to the repo outside the submodule
# The issue is, submodule does not get updated when running this script either because of incorrect setup 
# or maybe because public is part of gitignore and the remote points to blog.git instead of rrajath.github.io.git.
# In order to make this script work properly, the public folder that is generated is copied to the repo outside
# this folder and then committed and pushed
cp -r public/* ../rrajath.github.io

# Go To Public folder
cd ../rrajath.github.io

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
