param(
    [string]$action
)

$dotnetPath = "C:\Program Files\dotnet"
$env:PATH = "$dotnetPath;$env:PATH"
$dotnetInstallationTempDirectory = "$env:TEMP\dotnet"
$dotnetTempPath = Join-Path $dotnetInstallationTempDirectory "dotnet.exe"

function Install-DotNet8 {
    Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile dotnet-install.ps1
    if (-not $?) {
        Write-Host "Failed to download dotnet-install.ps1, exiting..." -ForegroundColor Red
        exit 1
    }

    & .\dotnet-install.ps1 -InstallDir $dotnetInstallationTempDirectory -Version 8.0.403
    if (-not $?) {
        Write-Host "Failed to install .NET SDK, exiting..." -ForegroundColor Red
        exit 1
    }

    Write-Host ".NET 8.0 installed successfully." -ForegroundColor Green
    Remove-Item -Force dotnet-install.ps1
}

if ($action -eq "build") {
    if (-not (Get-Command dotnet -ErrorAction SilentlyContinue) -or ([version]$(dotnet --version) -lt [version]"8.0")) {
        Write-Host "Installing .NET SDK 8.0..."

        Install-DotNet8

        Write-Host "Restoring project dependencies..."
        & $dotnetTempPath restore .\post-call-analytics.csproj

        & $dotnetTempPath build .\post-call-analytics
        if ($?) {
            Write-Host "Building is succeeded." -ForegroundColor Green
        }
        else {
            Write-Host "Building is failed, exiting..." -ForegroundColor Red
            exit 1
        }
    }
    else {
        Write-Host "Restoring project dependencies..."
        & dotnet restore .\post-call-analytics.csproj

        & dotnet build .\post-call-analytics.csproj
        if ($?) {
            Write-Host "Building is succeeded." -ForegroundColor Green
        }
        else {
            Write-Host "Building is failed, exiting..." -ForegroundColor Red
            exit 1
        }
    }
}
elseif ($action -eq "run") {
    # Define the path to your .env file
    $envFilePath = ".env/.env.dev"

    Get-Content -Path $envFilePath | ForEach-Object {
        # Ignore empty lines and lines that start with `#` (comments)
        if ($_ -and $_ -notmatch '^\s*#') {
            # Split each line into key and value
            $parts = $_ -split '=', 2
            $key = $parts[0].Trim()
            $value = $parts[1].Trim()

            # Set the environment variable
            [System.Environment]::SetEnvironmentVariable($key, $value)
        }
    
    $subscriptionKey = $env:SPEECH_RESOURCE_KEY
    $serviceRegion = $env:SERVICE_REGION
    $customSubDomainName = $env:CUSTOM_SUBDOMAIN_NAME

    $openAiEndpoint = "https://$customSubDomainName.openai.azure.com/"
    $openAiDeploymentName = "gpt-4"

    $inputFile = Read-Host "Please enter the path to the input audio file."
    if (Get-Command dotnet -ErrorAction SilentlyContinue) {
        & dotnet run --project .\post-call-analytics.csproj --speechKey $subscriptionKey --speechRegion $serviceRegion --openAiKey $subscriptionKey --openAiEndpoint $openAiEndpoint --openAiDeploymentName $openAiDeploymentName --inputAudio $inputFile
    }
    else {
        & $dotnetTempPath run --project .\post-call-analytics.csproj --speechKey $subscriptionKey --speechRegion $serviceRegion --openAiKey $subscriptionKey --openAiEndpoint $openAiEndpoint --openAiDeploymentName $openAiDeploymentName --inputAudio $inputFile
    }
}
else {
    Write-Host "Invalid action: $action" -ForegroundColor Red
    Write-Host "Usage: build or run"
    exit 1
}