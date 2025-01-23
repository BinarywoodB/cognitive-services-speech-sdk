param(
    [string]$action
)

if ($action -eq "build") {
    $pythonVersion = python --version 2>&1
    if (-not $pythonVersion -like "Python 3*") {
        Write-Host "Python 3 is not installed. Please install python3 first. Exiting..." -ForegroundColor Red
        exit 1
    }

    # Check if the swagger_client is already installed
    $moduleCheck = & python -c "import swagger_client" 2>&1
    if ($LASTEXITCODE -ne 0) {
        Write-Host "The swagger_client is not installed. Please install it base on https://github.com/Azure-Samples/cognitive-services-speech-sdk/blob/master/samples/batch/python/README.md#download-and-install-the-api-client-library" -ForegroundColor Green
        exit 1
    }

    pip install requests
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

    $pythonVersion = python --version 2>&1
    if ($pythonVersion -like "Python 3*") {
        & python .\python-client\main.py $recordingsLocale $recordingsBlobUri
    }
    else {
        Write-Host "Python 3 is not installed. Please install python3 first. Exiting..." -ForegroundColor Red
        exit 1
    }
}
else {
    Write-Host "Invalid action: $action" -ForegroundColor Red
    Write-Host "Usage: build or run"
    exit 1
}