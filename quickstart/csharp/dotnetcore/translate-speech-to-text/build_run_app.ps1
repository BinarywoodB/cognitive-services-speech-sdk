if (-not (Get-Command dotnet -ErrorAction SilentlyContinue)) {
    Write-Host ".NET SDK is not installed, installing .NET 6..."
    Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile dotnet-install.ps1
    & .\dotnet-install.ps1 --version 6.0.0
}

$dotnetVersion = & dotnet --version
if ($null -eq $dotnetVersion -or [version]$dotnetVersion -lt [version]"6.0") {
    Write-Host "The currently installed .NET version is $dotnetVersion. Will install .NET 6 for you."

    Invoke-WebRequest -Uri "https://dot.net/v1/dotnet-install.ps1" -OutFile "dotnet-install.ps1"
    & .\dotnet-install.ps1 -Version "6.0.0"
}

dotnet add .\helloworld package Microsoft.CognitiveServices.Speech --source https://api.nuget.org/v3/index.json
dotnet build .\helloworld --configuration release
