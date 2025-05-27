#!/bin/bash

# Variables
REPO_URL="https://github.com/djkaz/tesdevops.git"
BRANCH_NAME="main"  # Change to your target branch
CHECKOUT_DIR="temp_repo"

# Clone the repository shallowly
git clone --depth 1 --branch "$BRANCH_NAME" "$REPO_URL" "$CHECKOUT_DIR" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Branch '$BRANCH_NAME' exists. Proceeding with deployment..."
    # Your deployment commands here
    # For example:
    # ./deploy.sh
else
    echo "Branch '$BRANCH_NAME' does not exist. Skipping deployment."
    exit 1
fi

# Cleanup
rm -rf "$CHECKOUT_DIR"
