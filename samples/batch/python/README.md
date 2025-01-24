# How to use the Speech Services Batch Transcription API from Python

## Download and install the API client library

To execute the sample you need to generate the Python library for the REST API which is generated through Swagger.

Follow these steps for the installation:

1. Go to https://editor.swagger.io.
1. Click **File**, then click **Import URL**.
1. Enter the Swagger URL for the Speech Services API: `https://raw.githubusercontent.com/Azure/azure-rest-api-specs/main/specification/cognitiveservices/data-plane/Speech/SpeechToText/stable/2024-11-15/speechtotext.json`.
1. Click **Generate Client** and select **Python**.
1. Save the client library.
1. Extract the downloaded python-client-generated.zip somewhere in your file system.
1. Install the extracted python-client module in your Python environment using pip: `pip install path/to/package/python-client`.
1. The installed package has the name `swagger_client`. You can check that the installation worked using the command `python -c "import swagger_client"`.

## Install other dependencies

The sample uses the `requests` library. You can install it with the command

```bash
pip install requests
```

## Run the Sample within VS Code
1. Install "Azure AI Speech Toolkit" extension in VS Code.
2. Download this sample from sample gallery to local machine.
3. Trigger "Azure AI Speech Toolkit: Configure Azure Speech Resources" command from command palette to select speech resource.
4. Trigger "Azure AI Speech Toolkit: Configure and Setup the Sample App" command from command palette to configure and setup the sample. This command only needs to be run once.
5. Trigger "Azure AI Speech Toolkit: Build the Sample App" command from command palette to build the sample.
6. Trigger "Azure AI Speech Toolkit: Run the Sample App" command from command palette to run the sample.

    This command will run the sample as a task in terminal. Interactively input SAS URI pointing to an audio file stored in Azure Blob Storage. (You can upload your local audio or recording files to your Azure blob storage. Of course, if you don't have audio, you can download this en-US audio file as an example: [Call1_separated_16k_health_insurance.wav](https://github.com/Azure-Samples/cognitive-services-speech-sdk/raw/master/scenarios/call-center/sampledata/Call1_separated_16k_health_insurance.wav) and upload it to your Azure blob storage.)
