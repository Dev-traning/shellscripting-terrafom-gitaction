#!/bin/bash

read -p "Enter mission name: " mission_name
file_name="first-git-shell"

# Create a directory for the mission
mkdir "$mission_name"

# Initialize a Git repository
git init "$mission_name"

# Change into the mission directory
cd "$mission_name"

# Create a file and write content to it
echo "the world war" > "$file_name"

# Add the file to the staging area
git add "$file_name"

# Commit the changes
git commit -m "the commit"

# Create a new branch
git checkout -b "$mission_name"

# Check the status of the repository
rocket_status=$(git status)

# Print the status
echo "Status of launch: $rocket_status"

# Debug: Print the git log
rocket_debug=$(git log)
echo "Git Log: $rocket_debug"

# Branch name
git_branch=$(git branch | grep \* | cut -d ' ' -f2)

# Push the code
git push -u origin "$git_branch"

if [ "$rocket_status" == "failed" ]; then
    echo "Rocket launch failed!"
    echo "Rocket debug info: $rocket_debug"
elif [ "$rocket_status" == "success" ]; then
    echo "Rocket launch successful!"
else
    echo "Unknown status: $rocket_status"
fi

