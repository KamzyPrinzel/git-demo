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
