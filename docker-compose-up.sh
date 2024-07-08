#!/bin/bash

# Initialize an empty array to store the compose files
compose_files=("docker-compose.yml")

# Function to prompt user for yes/no input
prompt_yes_no() {
    while true; do
        read -p "$1 (y/n): " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

# Prompt for Redis
if prompt_yes_no "Do you want to include Redis?"; then
    compose_files+=("docker-compose.redis.yml")

    # Prompt for Sidekiq (only if Redis is included)
    if prompt_yes_no "Do you want to include Sidekiq?"; then
        compose_files+=("docker-compose.sidekiq.yml")
    fi
fi

# Construct the docker-compose command
cmd="docker-compose"
for file in "${compose_files[@]}"; do
    cmd+=" -f $file"
done
cmd+=" up"

# Print the command being run
echo "Running command: $cmd"

# Execute the command
eval $cmd

# Save the configuration for future use
echo "${compose_files[@]}" > .docker-compose-config
