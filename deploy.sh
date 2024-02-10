#!/bin/sh
apt update
echo "ewww"
apt install git -y
echo "hi"
cd /dir
# git clone https://github.com/Wunder-TV/shopkware.git
# Define the directory where your repo should be or will be cloned
# Define the Git repository URL
GIT_REPO_URL="https://github.com/Wunder-TV/shopkware.git"

# Check if the directory exists
if [ -d ".git" ]; then
  echo "Repository directory exists. Attempting to update..."
  # Pull the latest changes
  git pull
else
  echo "Repository directory does not exist. Cloning the repository..."
  # Clone the repository
  git clone "$GIT_REPO_URL" "."
fi