# How to use the Speech Services Batch Transcription API from Node.js

## Prerequisites
- SAS URI pointing to audio files stored in Azure Blob Storage. You can upload your local audio or recording files to your Azure blob storage. Of course, you can also download the example en-US audio files from [sample audio files](https://github.com/Azure-Samples/cognitive-services-speech-sdk/tree/master/sampledata/audiofiles) and then upload it to your Azure blob storage.
- The locale (e.g. en-US, zh-CN, etc.) of the audio file.

## Run the Sample within VS Code

1. Install "Azure AI Speech Toolkit" extension in VS Code.
2. Download this sample from sample gallery to local machine.
3. Trigger "Azure AI Speech Toolkit: Configure Azure Speech Resources" command from command palette to select speech resource.
4. Trigger "Azure AI Speech Toolkit: Configure and Setup the Sample App" command from command palette to configure and setup the sample. This command only needs to be run once.
5. Trigger "Azure AI Speech Toolkit: Build the Sample App" command from command palette to build the sample.
6. Trigger "Azure AI Speech Toolkit: Run the Sample App" command from command palette to run the sample.

## Environment Setup
- Azure AI Speech Toolkit will automatically help you set these environment variables. If you want to run outside of VS Code, you can manually set the following environment variables.

  - `SPEECH_REGION`: Azure region for the Speech Service (e.g., `eastus`).
  - `SPEECH_KEY`: Azure Cognitive Services Speech API key.
