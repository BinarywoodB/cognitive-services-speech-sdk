#!/bin/bash

sudo apt-get update
sudo apt-get install libssl-dev libasound2

if ! command -v dotnet &> /dev/null; then
    echo ".NET SDK is not installed, installing .NET 6..."
    wget https://dot.net/v1/dotnet-install.sh
    chmod +x dotnet-install.sh
    ./dotnet-install.sh --version 6.0.0
fi

dotnetVersion=$(dotnet --version)
if [[ "$dotnetVersion" < "6.0" ]]; then
    echo "The currently installed .NET version is $dotnetVersion. Will install .NET 6 for you."
    wget https://dot.net/v1/dotnet-install.sh
    chmod +x dotnet-install.sh
    ./dotnet-install.sh --version 6.0.0
fi

cp .config.json ./helloworld

dotnet add ./helloworld package Microsoft.CognitiveServices.Speech --source https://api.nuget.org/v3/index.json
dotnet build ./helloworld --configuration release
