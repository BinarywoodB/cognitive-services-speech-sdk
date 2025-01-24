#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

action="$1"

# Check if the correct number of arguments is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 {build|run}"
    exit 1
fi

if [ "$action" == "build" ]; then
    # Check if Node.js is installed
    if ! node -v &> /dev/null; then
        echo -e "Node.js is not installed. Please install Node.js first. Exiting..."
        exit 1
    fi

    # Check if swagger_client is installed
    if ! npm list -g --depth=0 2>/dev/null | grep -q swagger_client; then
        echo -e "The swagger_client is not installed. Please install it based on https://github.com/Azure-Samples/cognitive-services-speech-sdk/blob/master/samples/batch/js/node/README.md#download-and-install-the-api-client-library"
        exit 1
    fi

    npm install system-sleep
    npm install request
elif [ "$action" == "run" ]; then
    read -p "Please enter a SAS URI pointing to an audio file stored in Azure Blob Storage: " recordingsBlobUri
    if [ -z "$recordingsBlobUri" ]; then
        echo "Not enter the Azure Blob SAS URL of the input audio file. Exiting..."
        exit 1
    fi

    read -p "Please enter the locale of the input audio file (e.g. en-US, zh-CN, etc.): " recordingsLocale
    if [ -z "$recordingsLocale" ]; then
        echo "Not enter the locale. Exiting..."
        exit 1
    fi

    if node -v &> /dev/null; then
        & node ./main.js $recordingsLocale $recordingsBlobUri
    else
        echo -e "Node.js is not installed. Please install Node.js first. Exiting..."
        exit 1
    fi
else
    echo "Invalid action: $action"
    echo "Usage: $0 {build|run}"
    exit 1
fi