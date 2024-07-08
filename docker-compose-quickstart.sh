#!/bin/bash

# Check if configuration file exists
if [ ! -f .docker-compose-config ]; then
    echo "No saved configuration found. Please run ./docker-compose-up.sh first."
    exit 1
fi

# Read the configuration
compose_files=()
while IFS= read -r line; do
    compose_files+=($line)
done < .docker-compose-config

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
