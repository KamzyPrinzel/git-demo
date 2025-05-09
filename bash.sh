#!/bin/bash

# Check if git is installed
if ! command -v git &> /dev/null; then
	echo "Git is not installed. Installing Git..."
	sudo apt get update 
	sudo apt get install -y git
fi

# Create a directory and navigate to it
repo_directory="my_repo"
if [ ! -d "$repo_direcory" ]; then
	echo "creating directory: $repo_directory"
	mkdir "$repo_directory"
fi

cd "$repo_directory" || exit

# Initialize a new git repository
if [ ! -d ".git" ]; then
	git init
fi

# Add a remote repository and fetch the latest changes
git_repo_url = "https://github.com/example.git #replace with your url
git remote add origin "$git_repo_url"
git fetch origin

echo "repository setup complete. You can start working on the $repo_directory directory"
