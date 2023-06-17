#!/bin/bash

# Check if the URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: ./script.sh <URL>"
    exit 1
fi

# Extract the URL argument
url="$1"

# Send a request to the URL and store the response in a temporary file
response_file=$(mktemp)
curl -s -o "$response_file" -w "%{size_download}" "$url" > /dev/null

# Display the size of the body in bytes
size=$(cat "$response_file")
echo "Size of the body: $size bytes"

# Clean up the temporary file
rm "$response_file"

