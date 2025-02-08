# SpeechServicesApiVersion20241115.Phrase

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**channel** | **Number** | The 0-based channel index. Only present if channel separation is enabled. | [optional] 
**speaker** | **Number** | A unique integer number that is assigned to each speaker detected in the audio without particular order. Only present if speaker diarization is enabled. | [optional] 
**offsetMilliseconds** | **Number** | The start offset of the phrase in milliseconds. | 
**durationMilliseconds** | **Number** | The duration of the phrase in milliseconds. | 
**text** | **String** | The transcribed text of the phrase. | 
**words** | [**[Word]**](Word.md) | The words that make up the phrase. Only present if word-level timestamps are enabled. | [optional] 
**locale** | **String** | The locale of the phrase. | [optional] 
**confidence** | **Number** | The confidence value for the phrase. | 


