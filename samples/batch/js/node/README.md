# How to use the Speech Services Batch Transcription API from Node.js

## Download and install the API client library

To execute the sample you need to generate the Javascript library for the REST API which is generated through Swagger.

Follow these steps for the installation:

1. Go to https://editor.swagger.io.
1. Click **File**, then click **Import URL**.
1. Enter the Swagger URL for the Speech Services API: `https://westus.dev.cognitive.microsoft.com/docs/services/speech-to-text-api-v3-0/export?DocumentFormat=Swagger&ApiName=Speech%20to%20Text%20API%20v3.0`.
1. Click **Generate Client** and select **Javascript**.
1. Save the client library.
1. Extract the downloaded javascript-client-generated.zip somewhere in your file system.
1. Install the extracted javascript-client module in your nodejs environment using npm
`npm install installpath/to/package/javascript-client`


## Install other dependencies

The sample uses the `requests` and `system-sleep` library. You can install it with the command

```bash
npm install system-sleep
npm install request
```
```

## Run the Sample within VS Code

1. Install "Azure AI Speech Toolkit" extension in VS Code.
2. Download this sample from sample gallery to local machine.
3. Trigger "Azure AI Speech Toolkit: Configure Azure Speech Resources" command from command palette to select speech resource.
4. Trigger "Azure AI Speech Toolkit: Configure and Setup the Sample App" command from command palette to configure and setup the sample. This command only needs to be run once.
5. Trigger "Azure AI Speech Toolkit: Build the Sample App" command from command palette to build the sample.
6. Trigger "Azure AI Speech Toolkit: Run the Sample App" command from command palette to run the sample.

    This command will run the sample as a task in terminal. Interactively input SAS URI pointing to an audio file stored in Azure Blob Storage. (You can upload your local audio or recording files to your Azure blob storage. Of course, if you don't have audio, you can download this en-US audio file as an example: [Call1_separated_16k_health_insurance.wav](https://github.com/Azure-Samples/cognitive-services-speech-sdk/raw/master/scenarios/call-center/sampledata/Call1_separated_16k_health_insurance.wav) and upload it to your Azure blob storage.)
