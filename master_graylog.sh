#!/bin/bash

# Install Git on RHEL 9
sudo dnf install -y git

# Navigate to the /root directory
cd /root

# Clone the repository or pull the latest changes if the repository already exists
REPO_URL="https://github.com/mochtod/copilot-one.git"
if [ -d "ssb-graylog" ]; then
  cd ssb-graylog
  git pull
else
  git clone $REPO_URL
fi

# Navigate to the project directory
cd /root/copilot-one

# Generate secrets and update .env file
chmod +x generate_secrets.sh
./generate_secrets.sh

# Start the Docker Compose stack
sudo docker-compose up

echo "Graylog setup and launch completed."
