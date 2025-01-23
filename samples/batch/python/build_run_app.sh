#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

action="$1"

# Check if the correct number of arguments is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 {build|run}"
    exit 1
fi

if [ "$action" == "build" ]; then
    command -v python3 >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "Python 3 is not found. Please install python3 first. Exiting..."
        exit 1
    fi

    python -c "import swagger_client" 2>/dev/null
    if [ $? -ne 0 ]; then
        echo "The swagger_client is not installed. Please install it base on https://github.com/Azure-Samples/cognitive-services-speech-sdk/blob/master/samples/batch/python/README.md#download-and-install-the-api-client-library"
        exit 1
    fi

    pip install requests
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

    if command -v python3 &> /dev/null; then
        python3 ./python-client/main.py $recordingsLocale $recordingsBlobUri
    else
        echo -e "Python 3 is not found. Please install python3 first. Exiting..."
        exit 1
    fi
else
    echo "Invalid action: $action"
    echo "Usage: $0 {build|run}"
    exit 1
fi