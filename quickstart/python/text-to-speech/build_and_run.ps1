param(
    [string]$action
)

$pythonPath = Get-Command python -ErrorAction SilentlyContinue
$env:Path = "$pythonPath;$env:Path"
$tempPythonInstallationDirectory = "$env:TEMP\python3"
$tempPythonPath = Join-Path $tempPythonInstallationDirectory "python.exe"

function Test-Python3Installed {
    if ($pythonPath) {
        $pythonVersion = python --version 2>&1
        if ($pythonVersion -like "Python 3*") {
            return $true
        }
    }
    return $false
}

function Install-Packages {
    param (
        [string]$pythonDirectory
    )

    $pythonPip = "$pythonDirectory\Scripts\pip.exe"
    if (-not (Test-Path $pythonPip)) {
        Write-Host "Installing pip..."
        Invoke-WebRequest -Uri "https://bootstrap.pypa.io/get-pip.py" -OutFile "$pythonDirectory\get-pip.py"
        if (-not $?) {
            Write-Host "Failed to download  pip, exiting..." -ForegroundColor Red
            exit 1
        }
        & python "$pythonDirectory\get-pip.py" --no-warn-script-location --prefix $pythonDirectory
        if (-not $?) {
            Write-Host "The pip installation failed, exiting..." -ForegroundColor Red
            exit 1
        }

        Write-Host "Installing azure-cognitiveservices-speech..."
        & $pythonPip install azure-cognitiveservices-speech
        if (-not $?) {
            Write-Host "The azure-cognitiveservices-speech package installation failed, exiting..." -ForegroundColor Red
            exit 1
        }
    }
}

if ($action -eq "build") {
    if (Test-Python3Installed) {
        Write-Host "Python 3 is already installed."

        $pythonDirectory = Split-Path $pythonPath.Path
        Install-Packages -pythonDirectory $pythonDirectory
    }
    else {
        Write-Host "Python 3 is not installed. Installing Python 3 to $tempPythonInstallationDirectory..."

        $pythonDownloadUrl = "https://www.python.org/ftp/python/3.11.5/python-3.11.5-embed-amd64.zip"
        $zipFilePath = ".\python3.zip"
        Invoke-WebRequest -Uri $pythonDownloadUrl -OutFile $zipFilePath
        if (-not $?) {
            Write-Host "Failed to download python3, exiting..." -ForegroundColor Red
            exit 1
        }

        Expand-Archive -Path $zipFilePath -DestinationPath $tempPythonInstallationDirectory
        if (-not $?) {
            Write-Host "Python3 installation failed, exiting..." -ForegroundColor Red
            exit 1
        }
        Remove-Item -Force -Path $zipFilePath

        Install-Packages -pythonDirectory $tempPythonInstallationDirectory
    }
}
elseif ($action -eq "run") {
    if ($pythonPath) {
        & $python .\quickstart.py
    }
    elseif (Get-Command $tempPythonPath -ErrorAction SilentlyContinue) {
        & $tempPythonPath .\quickstart.py
    }
    else {
        Write-Host "Python is not found. Please first run the script with build action to install Python." -ForegroundColor Red
        exit 1
    }
}
else {
    Write-Host "Invalid action: $action" -ForegroundColor Red
    Write-Host "Usage: build or run"
    exit 1
}
