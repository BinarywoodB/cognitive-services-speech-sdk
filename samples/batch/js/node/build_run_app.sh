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
    if [ -f "$envFilePath" ]; then
        # Read each line of the file and process it
        while IFS= read -r line; do
            # Ignore empty lines and lines that start with `#` (comments)
            if [[ -n "$line" && ! "$line" =~ ^\s*# ]]; then
                # Split each line into key and value
                IFS='=' read -r key value <<< "$line"
                key=$(echo "$key" | xargs)   # Trim whitespace from key
                value=$(echo "$value" | xargs) # Trim whitespace from value

                # Set the environment variable in the current session
                export "$key=$value"
            fi
        done < "$envFilePath"
    else
        echo "File not found: $envFilePath. You can create one to set environment variables or manually set secrets."
    fi

    read -p "Do you want to use RecordingsBlobUris [y/Y] or RecordingsContainerUri [n/N]? Please enter y/Y or n/N: " useBlobUrisOrContainerUri
    if [[ "$useBlobUrisOrContainerUri" =~ ^[yY]$ ]]; then
        choice=0
    elif [[ "$useBlobUrisOrContainerUri" =~ ^[nN]$ ]]; then
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
        args=( "--service_key" "$SPEECH_RESOURCE_KEY"
               "--service_region" "$SERVICE_REGION"
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