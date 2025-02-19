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

    packageName="javascript-client"
    installed=$(npm list --depth=0 2>/dev/null | grep "$packageName")
    globalInstalled=$(npm list -g --depth=0 2>/dev/null | grep "$packageName")
    if [[ -z "$installed" && -z "$globalInstalled" ]]; then
        echo -e "$packageName is not installed. Please follow the guide in README.md to install."
        exit 1
    fi

    npm install system-sleep request yargs
elif [ "$action" == "run" ]; then
    # Load environment variables from .env file
    ENV_FILE=".env/.env.dev" 
    if [ -f "$ENV_FILE" ]; then
        source "$ENV_FILE"

        # Ensure environment variables are available to the C++ binary
        export SPEECH_KEY=$SPEECH_RESOURCE_KEY
        export SPEECH_REGION=$SERVICE_REGION
    else
        echo "Environment file $ENV_FILE not found. You can create one to set environment variables or manually set secrets in environment variables."
    fi

    read -p "Do you want to use RecordingsBlobUris [1] or RecordingsContainerUri [2]? Please enter 1/2: " useBlobUrisOrContainerUri
    if [[ "$useBlobUrisOrContainerUri" == "1" ]]; then
        choice=0
    elif [[ "$useBlobUrisOrContainerUri" == "2" ]]; then
        choice=1
    else
        echo -e "Invalid input. Exiting..."
        exit 1
    fi

    if [ "$choice" -eq 0 ]; then
        read -p "Please enter SAS URI pointing to audio files stored in Azure Blob Storage. If input multiple, please separate them with commas: " recordingsBlobUris
        if [ -z "$recordingsBlobUris" ]; then
            echo -e "Not enter the Azure Blob SAS URL of the input audio file."
            exit 1
        fi
    else
        read -p "Please enter the SAS URI of the container in Azure Blob Storage where the audio files are stored: " recordingsContainerUri
        if [ -z "$recordingsContainerUri" ]; then
            echo -e "Not enter the Azure Blob Container SAS URI of the input audio file."
            exit 1
        fi
    fi

    read -p "Please enter the locale of the input audio file (e.g. en-US, zh-CN, etc.): " recordingsLocale
    if [ -z "$recordingsLocale" ]; then
        echo -e "Not enter the locale."
        exit 1
    fi

    nodeVersion=$(node -v 2>/dev/null)
    if [ $? -eq 0 ]; then
        args=( "--service_key" "$SPEECH_KEY"
               "--service_region" "$SPEECH_REGION"
               "--locale" "$recordingsLocale" )

        if [ "$choice" -eq 0 ]; then
            args+=( "--recordings_blob_uris" "$recordingsBlobUris" )
        else
            args+=( "--recordings_container_uri" "$recordingsContainerUri" )
        fi

        node ./main.js "${args[@]}"
    else
        echo -e "Node.js is not installed. Please install Node.js first. Exiting..."
        exit 1
    fi
else
    echo "Invalid action: $action"
    echo "Usage: $0 {build|run}"
    exit 1
fi