#!/bin/bash

if ! command -v dotnet &> /dev/null; then
    echo ".NET SDK is not installed, installing .NET 6..."
    wget https://dot.net/v1/dotnet-install.sh
    chmod +x dotnet-install.sh
    ./dotnet-install.sh --version 6.0.0
fi


dotnet add ./helloworld/helloworld.csproj package Microsoft.CognitiveServices.Speech

dotnet build ./helloworld/helloworld.csproj --configuration Release
