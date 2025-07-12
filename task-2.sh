#!/bin/bash

# Clone the remote GitHub repository
git clone https://github.com/sali9043/task-2.git

# Create two new feature files
touch feature1.txt feature2.txt

# Verify the files and directory
ls

# Move the newly created files into the cloned repo directory
mv ./fe* ./task-2/

# Check remaining files (only task-2 should remain in parent dir)
ls

# Navigate into the cloned project directory
cd task-2/

# Confirm files are inside the repo directory
ls

# Reinitialize Git repo (not needed usually after clone, but included as per command history)
git init

# Add all files to staging area
git add .

# Make initial commit to the main branch
git commit -m "main branch commit"

# Create and switch to 'feature1' branch
git checkout -b "feature1"

# Create and switch to 'feature2' branch
git checkout -b "feature2"

# Create and switch to 'develop' branch
git checkout -b "develop"

# Create a file for development work
touch develop.txt

# Confirm the new file exists
ls

# Check status to see untracked file
git status

# Stash the untracked develop.txt file
git stash save "develop.txt" --include-untracked

# Confirm stash removed the file
ls

# Check clean working tree status
git status

# Switch to feature1 branch
git checkout feature1

# Confirm feature1 branch has expected files
ls

# Ensure clean status before new changes
git status

# Create new file for feature1 task
touch new.txt

# Stage the file
git add ./new.txt

# Commit the file
git commit -m "feature1 step 5 complete"

# Switch back to develop branch
git checkout develop

# Confirm current files (develop.txt is still stashed)
ls

# Apply the stashed develop.txt
git stash apply

# Check if file is untracked again
git status

# Stage the recovered file
git add ./develop.txt

# Commit the develop task completion
git commit -m "develop fine task complete"
