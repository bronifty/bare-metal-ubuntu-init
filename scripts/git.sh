# sync local with remote
git pull origin main

# overwrite the index (staging area) and working tree (local files) with the latest commit on the branch
git restore --source=HEAD --staged --worktree .obsidian/workspace.json


