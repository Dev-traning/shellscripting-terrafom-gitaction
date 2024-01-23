#!/bin/bash

mission_name="dimpymission"
file_name="first-git-shell"

# Create a directory for the mission
mkdir $mission_name

# Initialize a Git repository
git init $mission_name

# Change into the mission directory
cd $mission_name

# Create a file and write content to it
echo "the world war" > $file_name

# Add the file to the staging area
git add $file_name

# Commit the changes
git commit -m "the commit"

# Create a new branch
git checkout -b $mission_name

# Check the status of the repository
rocket_status=$(git status)

# Print the status
echo "Status of launch: $rocket_status"

