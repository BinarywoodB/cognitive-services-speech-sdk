#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 {build|run}"
    exit 1
fi

action=$1

install_dotnet6() {
    wget https://dot.net/v1/dotnet-install.sh
    chmod +x dotnet-install.sh
    ./dotnet-install.sh --version 6.0.427
}

if [ "$action" = "build" ]; then
    sudo apt-get update
    sudo apt-get install libssl-dev libasound2

    if ! command -v dotnet &> /dev/null; then
        echo ".NET SDK is not installed, installing .NET SDK 6.0..."
        install_dotnet6
    else
        dotnetVersion=$(dotnet --version)
        if [[ "$dotnetVersion" < "6.0" ]]; then
            echo "The currently installed .NET SDK version is $dotnetVersion. Installing .NET SDK 6.0..."
            install_dotnet6
        fi
    fi

    if [ $? -nq 0 ]; then
        echo "Installation .NET SDK 6.0 is failed, exiting..."
        exit 1
    fi

    dotnet add ./helloworld package Microsoft.CognitiveServices.Speech --interactive
    if [ $? -eq 0 ]; then
        echo "Installation of Microsoft.CognitiveServices.Speech package succeeded."
    else
        echo "Installation of Microsoft.CognitiveServices.Speech package failed, exiting..."
        exit 1
    fi

    dotnet build ./helloworld --configuration release
    if [ $? -eq 0 ]; then
        echo "Build succeeded."
    else
        echo "Build failed, exiting..."
        exit 1
    fi
elif [ "$action" = "run" ]; then
    dotnet run --project ./helloworld/helloworld.csproj --configuration release
else
    echo "Invalid action: $action"
    echo "Usage: $0 {build|run}"
    exit 1
fi
