#!/bin/sh

# This script is used to perform configuration or additional initialization operations after the container is created.

# Print the local workspace folder paths and environment variables
echo "LOCAL_WORKSPACE_FOLDER_BASE_NAME: $LOCAL_WORKSPACE_FOLDER_BASE_NAME"
echo "LOCAL_WORKSPACE_FOLDER: $LOCAL_WORKSPACE_FOLDER"

# Print environment variable
echo "APP_ENV: $APP_ENV"

# Install dependencies
# echo "Running ..."
# 

# Print completion message
echo "Post-create commands completed."
