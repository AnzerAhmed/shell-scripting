# GitHub Fork, Sync, Work, and Push Workflow

## Overview

This guide explains the recommended workflow when contributing to a repository that you have forked on GitHub.

Workflow:

Fork -> Clone -> Work Locally -> Owner Updates Repository
                    |
                    v
         Sync Fork -> Commit -> Pull --rebase -> Push

## 1. Fork the Repository

Original:
https://github.com/kcommit/shell-scripting

Your fork:
https://github.com/YOUR-USERNAME/shell-scripting

## 2. Copy the Clone URL

Use either SSH or HTTPS.

SSH:
git@github.com:YOUR-USERNAME/shell-scripting.git

HTTPS:
https://github.com/YOUR-USERNAME/shell-scripting.git

## 3. Go to Your Projects Folder

cd /c/nit

## 4. Clone Your Fork

git clone git@github.com:YOUR-USERNAME/shell-scripting.git
cd shell-scripting

## 5. Complete Your Assignment

Example:

mkdir -p assignments/day-04/your-name
touch assignments/day-04/your-name/day-04.sh

Create files, folders, test your scripts.

## 6. Owner Adds New Changes

While you are working, the original repository owner may add new files.

On GitHub click:

Sync fork
Update branch

## 7. Save Your Local Work

git status
git add .
git commit -m "Add my Day 04 assignment"

## 8. Update Your Local Repository

git pull --rebase origin main

This downloads the latest changes from your fork and reapplies your local commit.

## 9. Push Your Changes

git push origin main

or

git push

## Complete Workflow

cd /c/nit
git clone git@github.com:YOUR-USERNAME/shell-scripting.git
cd shell-scripting

# Work

git status
git add .
git commit -m "Add my Day 04 assignment"

# Sync your fork on GitHub first

git pull --rebase origin main
git push origin main

## Best Practices

- Work on your own fork.
- Test before committing.
- Commit before pull --rebase.
- Sync your fork regularly.
- Push only after updating your local repository.
