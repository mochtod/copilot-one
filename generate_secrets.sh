#!/bin/bash

# Generate GRAYLOG_PASSWORD_SECRET
GRAYLOG_PASSWORD_SECRET=$(< /dev/urandom tr -dc A-Z-a-z-0-9 | head -c${1:-96};echo)

# Prompt for root password and generate GRAYLOG_ROOT_PASSWORD_SHA2
echo -n "Enter Password: "
read -s PASSWORD
echo
GRAYLOG_ROOT_PASSWORD_SHA2=$(echo -n "$PASSWORD" | sha256sum | cut -d" " -f1)

# Create or update the .env file
cat <<EOL > .env
GRAYLOG_PASSWORD_SECRET=$GRAYLOG_PASSWORD_SECRET
GRAYLOG_ROOT_PASSWORD_SHA2=$GRAYLOG_ROOT_PASSWORD_SHA2
EOL

echo ".env file has been updated with the generated secrets."
