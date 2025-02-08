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
        npm install .\js-api-client-library\javascript-client
    }

    npm install system-sleep
    npm install request
    npm install yargs
}
elseif ($action -eq "run") {
    # Define the path to your .env file
    $envFilePath = ".env/.env.dev"

    if (Test-Path $envFilePath) {
        # Read each line of the file and process it
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

            [System.Environment]::SetEnvironmentVariable("SPEECH_KEY", $env:SPEECH_RESOURCE_KEY)
            [System.Environment]::SetEnvironmentVariable("SPEECH_REGION", $env:SERVICE_REGION)
        }

        Write-Host "Environment variables loaded from $envFilePath"
    }
    else {
        Write-Host "File not found: $envFilePath. You can create one to set environment variables or manually set secrets in environment variables."
    }

    $recordingsBlobUri = Read-Host "Please enter SAS URI pointing to audio files stored in Azure Blob Storage. If input multiple, please separate them with commas"
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
        & node .\main.js --recordings_blob_uri $recordingsBlobUri --locale $recordingsLocale
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