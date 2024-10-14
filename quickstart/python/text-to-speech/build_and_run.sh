#!/bin/sh

action=$1

tempPythonInstallationDirectory="$TEMP/python3"
tempPythonPath="$tempPythonInstallationDirectory/python"

test_python3_installed() {
    pythonPath=$(command -v python3 || command -v python)
    if [ -n "$pythonPath" ]; then
        pythonVersion=$($pythonPath --version 2>&1)
        case $pythonVersion in
            Python\ 3.*)
                return 0
                ;;
            *)
                return 1
                ;;
        esac
    fi
    return 1
}

install_packages() {
    pythonDirectory=$1
    pipPath="$pythonDirectory/bin/pip"

    if [ ! -f "$pipPath" ]; then
        echo "Installing pip..."
        curl -sS -o "$pythonDirectory/get-pip.py" "https://bootstrap.pypa.io/get-pip.py"
        if [ $? -ne 0 ]; then
            echo "Failed to download pip, exiting..." >&2
            exit 1
        fi
        $pythonPath "$pythonDirectory/get-pip.py" --no-warn-script-location --prefix "$pythonDirectory"
        if [ $? -ne 0 ]; then
            echo "The pip installation failed, exiting..." >&2
            exit 1
        fi

        echo "Installing azure-cognitiveservices-speech..."
        $pipPath install azure-cognitiveservices-speech
        if [ $? -ne 0 ]; then
            echo "The azure-cognitiveservices-speech package installation failed, exiting..." >&2
            exit 1
        fi
    fi
}

if [ "$action" = "build" ]; then
    if test_python3_installed; then
        echo "Python 3 is already installed."

        pythonDirectory=$(dirname $(command -v python3 || command -v python))
        install_packages "$pythonDirectory"
    else
        echo "Python 3 is not installed. Installing Python 3 to $tempPythonInstallationDirectory..."

        pythonDownloadUrl="https://www.python.org/ftp/python/3.11.5/python-3.11.5-embed-amd64.zip"
        zipFilePath="./python3.zip"
        curl -sS -o "$zipFilePath" "$pythonDownloadUrl"
        if [ $? -ne 0 ]; then
            echo "Failed to download python3, exiting..." >&2
            exit 1
        fi

        unzip -o "$zipFilePath" -d "$tempPythonInstallationDirectory"
        if [ $? -ne 0 ]; then
            echo "Python3 installation failed, exiting..." >&2
            exit 1
        fi
        rm -f "$zipFilePath"

        install_packages "$tempPythonInstallationDirectory"
    fi
elif [ "$action" = "run" ]; then
    pythonPath=$(command -v python3 || command -v python)

    if [ -n "$pythonPath" ]; then
        "$pythonPath" ./quickstart.py
    elif [ -f "$tempPythonPath" ]; then
        "$tempPythonPath" ./quickstart.py
    else
        echo "Python is not found. Please first run the script with build action to install Python." >&2
        exit 1
    fi
else
    echo "Inva
