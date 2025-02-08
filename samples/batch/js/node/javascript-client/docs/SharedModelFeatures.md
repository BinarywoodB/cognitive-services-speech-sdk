# SpeechServicesApiVersion20241115.SharedModelFeatures

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**supportsTranscriptionsSubmit** | **Boolean** | A value indicating whether submission of transcription jobs is supported (POST /transcriptions:submit). | [optional] 
**supportsTranscriptionsTranscribe** | **Boolean** | A value indicating whether the transcribe action is supported (POST /transcriptions:transcribe). | [optional] 
**supportsEndpoints** | **Boolean** | A value indicating whether creation of endpoints for live transcription is supported. | [optional] 
**supportsTranscriptionsOnSpeechContainers** | **Boolean** | A value indicating whether this model can be used for transcription on speech container. This feature can be added on existing models when it becomes usable on speech container. | [optional] 
**supportedOutputFormats** | [**[OutputFormatType]**](OutputFormatType.md) | Supported output formats. | [optional] 


