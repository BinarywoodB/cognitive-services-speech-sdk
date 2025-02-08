# SpeechServicesApiVersion20241115.TranscribeDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locales** | **[String]** | A list of possible locales for the transcription. If not specified, the locale of the speech in the audio is detected automatically from all supported locales. | [optional] 
**models** | **{String: String}** | Maps some or all candidate locales to a model URI to be used for transcription. If no mapping is given, the default model for the locale is used. | [optional] 
**profanityFilterMode** | [**ProfanityFilterMode**](ProfanityFilterMode.md) |  | [optional] 
**diarization** | [**TranscribeDiarizationProperties**](TranscribeDiarizationProperties.md) |  | [optional] 
**channels** | **[Number]** | The 0-based indices of the channels to be transcribed separately. If not specified, multiple channels are merged and transcribed jointly. Only up to two channels are supported. | [optional] 


