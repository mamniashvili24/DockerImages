#!/bin/bash

# Loop through each subdirectory in the current directory
for dir in */; do
    # Change directory to the subdirectory
    cd "$dir" || exit
    # Loop through each YAML file in the subdirectory
    for file in *.yml; do
        # Run Docker Compose for the YAML file
        docker-compose -f "$file" up -d
    done
    # Change directory back to the parent directory
    cd ..
done
