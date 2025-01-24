param(
    [string]$action
)

if ($action -eq "build") {
    $nodeVersion = & node -v 2>$null
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Node.js is not installed. Please install Node.js first. Exiting..." -ForegroundColor Red
        exit 1
    }

    # Check if the swagger_client is already installed
    $isSwaggerClientInstalled = npm list -g --depth=0 | Select-String swagger_client
    if (-not $isSwaggerClientInstalled) {
        Write-Host "The swagger_client is not installed. Please install it base on https://github.com/Azure-Samples/cognitive-services-speech-sdk/blob/master/samples/batch/python/README.md#download-and-install-the-api-client-library" -ForegroundColor Green
        exit 1
    }

    npm install system-sleep
    npm install request
}
elseif ($action -eq "run") {
    $recordingsBlobUri = Read-Host "Please enter a SAS URI pointing to an audio file stored in Azure Blob Storage"
    if ([string]::IsNullOrWhiteSpace($recordingsBlobUri)) {
        Write-Host "Not enter the Azure Blob SAS URL of the input audio file." -ForegroundColor Red
        exit 1
    }

    $recordingsLocale = Read-Host "Please enter the locale of the input audio file (e.g. en-US, zh-CN, etc.)"
    if ([string]::IsNullOrWhiteSpace($recordingsLocale)) {
        Write-Host "Not enter the locale." -ForegroundColor Red
        exit 1
    }

    $nodeVersion = & node -v 2>$null
    if ($LASTEXITCODE -eq 0) {
        & node .\main.js $recordingsLocale $recordingsBlobUri
    }
    else {
        Write-Host "Node.js is not installed. Please install Node.js first. Exiting..." -ForegroundColor Red
        exit 1
    }
}
else {
    Write-Host "Invalid action: $action" -ForegroundColor Red
    Write-Host "Usage: build or run"
    exit 1
}