#!/bin/bash

# Install Git on RHEL 9
sudo dnf install -y git

# Navigate to the /root directory
cd /root

# Clone the repository or pull the latest changes if the repository already exists
REPO_URL="https://github.com/your-repo/your-project.git"
if [ -d "your-project" ]; then
  cd your-project
  git pull
else
  git clone $REPO_URL
fi

echo "Git installation and repository update completed."
