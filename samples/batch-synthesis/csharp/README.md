# C# Example to use the Speech Services Batch Synthesis API

To successfully run this example you require

- a Speech Service subscription key,
- the region information matching your subscription key,

and optionally

- The relationship between custom voice names and deployment ID, if you want to use custom voices.
- The URI of a writable Azure blob container, if you want to store the audio files in your own Azure storage.

With this information, change the definitions of the appropriate constants in `program.cs`.


# C# Example to use the Speech Services Batch Synthesis API

## Run the Sample within VS Code
1. Install "Azure AI Speech Toolkit" extension in VS Code.
2. Download this sample from sample gallery to local machine.
3. Trigger "Azure AI Speech Toolkit: Configure Azure Speech Resources" command from command palette to select speech resource.
4. Trigger "Azure AI Speech Toolkit: Configure and Setup the Sample App" command from command palette to configure and setup the sample. This command only needs to be run once.
5. Trigger "Azure AI Speech Toolkit: Build the Sample App" command from command palette to build the sample.
6. Trigger "Azure AI Speech Toolkit: Run the Sample App" command from command palette to run the sample.


## Prerequisites
- users open the sample within vscode with our extension
* Microsoft Azure Cognitive Services Speech SDK
* (Optional)`relationship between custom voice names and deployment ID`: The relationship between custom voice names and deployment ID, if you want to use custom voices.
* (Optional)`URI of a writable Azure blob container`: The URI of a writable Azure blob container, if you want to store the audio files in your own Azure storage.

- users open the sample within vscode without our extension.
* Microsoft Azure Cognitive Services Speech SDK
* `SPEECH_KEY`: Your Speech resource key.
* `SPEECH_REGION`: Your Speech resource region.
* (Optional)`relationship between custom voice names and deployment ID`: The relationship between custom voice names and deployment ID, if you want to use custom voices.
* (Optional)`URI of a writable Azure blob container`: The URI of a writable Azure blob container, if you want to store the audio files in your own Azure storage.

- users open the sample out of vscode from other source (like azure ai foundry, etc).
* Microsoft Azure Cognitive Services Speech SDK
* `SPEECH_KEY`: Your Speech resource key.
* `SPEECH_REGION`: Your Speech resource region.
* (Optional)`relationship between custom voice names and deployment ID`: The relationship between custom voice names and deployment ID, if you want to use custom voices.
* (Optional)`URI of a writable Azure blob container`: The URI of a writable Azure blob container, if you want to store the audio files in your own Azure storage.