param(
    [string]$action
)

if ($action -eq "build") {
    $nodeVersion = & node -v 2>$null
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Node.js is not installed. Please install Node.js first. Exiting..." -ForegroundColor Red
        exit 1
    }

    $packageName = "javascript-client"
    $installed = npm list --depth=0 | Select-String $packageName
    $globalInstalled = npm list -g --depth=0 | Select-String $packageName
    if (-not $installed -and -not $globalInstalled) {
        Write-Host "$packageName is not installed. Please follow the guide in README.md to install." -ForegroundColor Red
        exit 1
    }

    npm install system-sleep request yargs
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
                Set-Item -Path "Env:$key" -Value $value
            }
        }

        Write-Host "Environment variables loaded from $envFilePath"
    } else {
        Write-Host "File not found: $envFilePath. You can create one to set environment variables or manually set secrets in environment variables."
    }

    $useBlobUrisOrContainerUri = Read-Host "Do you want to use RecordingsBlobUris [y/Y] or RecordingsContainerUri [n/N]? Please enter y/Y or n/N"
    if ($useBlobUrisOrContainerUri -match "^[yY]$") {
        $choice = 0
    } elseif ($choice -match "^[nN]$") {
        $choice = 1
    } else {
        Write-Host "Invalid input. Exiting..." -ForegroundColor Red
        exit 1
    }

    if ($choice -eq 0) {
        $recordingsBlobUris = Read-Host "Please enter SAS URI pointing to audio files stored in Azure Blob Storage. If input multiple, please separate them with commas"
        if ([string]::IsNullOrWhiteSpace($recordingsBlobUris)) {
            Write-Host "Not enter the Azure Blob SAS URL of the input audio file." -ForegroundColor Red
            exit 1
        }
    } else {
        $recordingsContainerUri = Read-Host "Please enter the SAS URI of the container in Azure Blob Storage where the audio files are stored"
        if ([string]::IsNullOrWhiteSpace($recordingsContainerUri)) {
            Write-Host "Not enter the Azure Blob Container SAS URI of the input audio file." -ForegroundColor Red
            exit 1
        }
    }

    $recordingsLocale = Read-Host "Please enter the locale of the input audio file (e.g. en-US, zh-CN, etc.)"
    if ([string]::IsNullOrWhiteSpace($recordingsLocale)) {
        Write-Host "Not enter the locale." -ForegroundColor Red
        exit 1
    }

    $nodeVersion = & node -v 2>$null
    if ($LASTEXITCODE -eq 0) {
        $args = @("--service_key", "$env:SPEECH_RESOURCE_KEY",
          "--service_region", "$env:SERVICE_REGION",
          "--locale", "$recordingsLocale")

        if ($choice -eq 0) {
            $args += @("--recordings_blob_uris", "$recordingsBlobUris")
        } else {
            $args += @("--recordings_container_uri", "$recordingsContainerUri")
        }
        & node .\main.js @args
    } else {
        Write-Host "Node.js is not installed. Please install Node.js first. Exiting..." -ForegroundColor Red
        exit 1
    }
} else {
    Write-Host "Invalid action: $action" -ForegroundColor Red
    Write-Host "Usage: build or run"
    exit 1
}