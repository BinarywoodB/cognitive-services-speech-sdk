# SpeechServicesApiVersion20241115.TranscriptionProperties

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**wordLevelTimestampsEnabled** | **Boolean** | A value indicating whether word level timestamps are requested. The default value is `false`. | [optional] 
**displayFormWordLevelTimestampsEnabled** | **Boolean** | A value indicating whether word level timestamps for the display form are requested. The default value is `false`. | [optional] 
**channels** | **[Number]** | A collection of the requested channel numbers. In the default case, the channels 0 and 1 are considered. | [optional] 
**punctuationMode** | [**PunctuationMode**](PunctuationMode.md) |  | [optional] 
**profanityFilterMode** | [**ProfanityFilterMode**](ProfanityFilterMode.md) |  | [optional] 
**destinationContainerUrl** | **String** | The requested destination container. ### Remarks ### When a destination container is used in combination with a `timeToLive`, the metadata of a transcription will be deleted normally, but the data stored in the destination container, including transcription results, will remain untouched, because no delete permissions are required for this container.  To support automatic cleanup, either configure blob lifetimes on the container, or use \"Bring your own Storage (BYOS)\" instead of `destinationContainerUrl`, where blobs can be cleaned up. | [optional] 
**timeToLiveHours** | **Number** | How long the transcription will be kept in the system after it has completed. Once the transcription reaches the time to live after completion(successful or failed) it will be automatically deleted.  Note: When using BYOS (bring your own storage), the result files on the customer owned storage account will also be deleted.Use either destinationContainerUrl to specify a separate container for result files which will not be deleted when the timeToLive expires, or retrieve the result files through the API and store them as needed.  The shortest supported duration is 6 hours, the longest supported duration is 31 days. 2 days (48 hours) is the recommended default value when data is consumed directly. | 
**languageIdentification** | [**LanguageIdentificationProperties**](LanguageIdentificationProperties.md) |  | [optional] 
**diarization** | [**DiarizationProperties**](DiarizationProperties.md) |  | [optional] 
**error** | [**EntityError**](EntityError.md) |  | [optional] 
**durationMilliseconds** | **Number** | The duration in milliseconds of the transcription. Durations larger than 2^53-1 are not supported to ensure compatibility with JavaScript integers. | [optional] [default to 0]


