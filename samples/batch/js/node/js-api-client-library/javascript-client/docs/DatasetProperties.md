# SpeechServicesApiVersion20241115.DatasetProperties

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acceptedLineCount** | **Number** | The number of lines accepted for this data set. | [optional] 
**rejectedLineCount** | **Number** | The number of lines rejected for this data set. | [optional] 
**durationMilliseconds** | **Number** | The total duration in milliseconds of the datasets if it contains audio files. Durations larger than 2^53-1 are not supported to ensure compatibility with JavaScript integers. | [optional] [default to 0]
**textNormalizationKind** | [**TextNormalizationKind**](TextNormalizationKind.md) |  | [optional] 
**error** | [**EntityError**](EntityError.md) |  | [optional] 


