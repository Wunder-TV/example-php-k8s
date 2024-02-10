#!/bin/sh
echo "beginn vom script"
apt update
echo "nachm update"
apt install git -y
echo "nachm install"
cd /dir
echo "nachm cd /dir"
# git clone https://github.com/Wunder-TV/shopkware.git
# Define the directory where your repo should be or will be cloned
# Define the Git repository URL
GIT_REPO_URL="https://github.com/Wunder-TV/shopkware.git"
echo "nachm Repo Variablen setzen"
ls -lahR
echo "nachm ls -lahR"

# Check if the directory exists
if [ -d ".git" ]; then
  echo "Repository directory exists. Attempting to update..."
  # Pull the latest changes
  git pull
  echo "nachm git pull"
else
  echo "Repository directory does not exist. Cloning the repository..."
  # Clone the repository
  git clone "$GIT_REPO_URL" "."
  echo "nachm git clone"
fi

echo "nachm if else / git gedöns"