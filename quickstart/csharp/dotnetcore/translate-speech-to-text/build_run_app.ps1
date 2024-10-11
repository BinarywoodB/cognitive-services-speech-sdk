if (-not (Get-Command dotnet -ErrorAction SilentlyContinue)) {
    Write-Host ".NET SDK is not installed, installing .NET 6..."
    Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile dotnet-install.ps1
    & .\dotnet-install.ps1 --version 6.0.0
}

dotnet add .\helloworld\helloworld.csproj package Microsoft.CognitiveServices.Speech

dotnet build .\helloworld\helloworld.csproj --configuration Release
