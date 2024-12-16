# Instructions to run premium speech demo
This project integrates Azure Cognitive Services Speech SDK with Azure OpenAI Service to perform real-time speech recognition and refine the recognized text for improved grammar and readability.

# Features
1. Real-time speech-to-text transcription using Azure Cognitive Services Speech SDK.
2. Automatic refinement of recognized text using Azure OpenAI Service.
3. Grammar correction, minor rewrites for improved readability, and spelling fixes for predefined phrases.

## Run the Sample within VS Code
1. Install "Azure AI Speech Toolkit" extension in VS Code.
2. Download this sample from sample gallery to local machine.
3. Trigger "Azure AI Speech Toolkit: Configure Azure Speech Resources" command from command palette to select an **Azure AI Service** resource.
4. Trigger "Azure AI Speech Toolkit: Configure and Setup the Sample App" command from command palette to configure and setup the sample. This command only needs to be run once.
5. Trigger "Azure AI Speech Toolkit: Run the Sample App" command from command palette to run the sample.

# The Speech SDK for Python is compatible with Windows, Linux, and macOS.
- On Windows, install the [Microsoft Visual C++ Redistributable for Visual Studio 2015, 2017, 2019, and 2022](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170&preserve-view=true) for your platform. Installing this package might require a restart.
- On Linux, you must use the x64 target architecture.

## Prerequisites
- Install a version of [Python from 3.7 or later](https://www.python.org/downloads/). 
- For any requirements, see [requirements.txt](requirements.txt).

## Configuration

### Predefined Phrases for Correction
The system supports fixing predefined phrases. The example below shows a predefined set of phrases:

```python
"PAFE music festival, non-profit 501(c)(3), Changliang Liu"
```
You can modify this list in the `rewrite_content` function to include phrases specific to your use case.

### Azure OpenAI Model
The script uses the `gpt-4o-mini` model. You can modify this in the `rewrite_content` function to use a different Azure OpenAI model.

---

## Example Output

When you say "how ar you" into the microphone:

### Raw Transcription:
```
RAW RECO: how ar you
```

### Refined Output:
```
REWRITE: How are you?
```