# SpeechServicesApiVersion20241115.Evaluation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **String** | The display name of the object. | 
**description** | **String** | The description of the object. | [optional] 
**customProperties** | **{String: String}** | The custom properties of this entity. The maximum allowed key length is 64 characters, the maximum allowed value length is 256 characters and the count of allowed entries is 10. | [optional] 
**self** | **String** | The location of this entity. | [optional] 
**createdDateTime** | **Date** | The time-stamp when the object was created. The time stamp is encoded as ISO 8601 date and time format (\"YYYY-MM-DDThh:mm:ssZ\", see https://en.wikipedia.org/wiki/ISO_8601#Combined_date_and_time_representations). | [optional] 
**lastActionDateTime** | **Date** | The time-stamp when the current status was entered. The time stamp is encoded as ISO 8601 date and time format (\"YYYY-MM-DDThh:mm:ssZ\", see https://en.wikipedia.org/wiki/ISO_8601#Combined_date_and_time_representations). | [optional] 
**model1** | [**EntityReference**](EntityReference.md) |  | 
**model2** | [**EntityReference**](EntityReference.md) |  | 
**dataset** | [**EntityReference**](EntityReference.md) |  | 
**transcription1** | [**EntityReference**](EntityReference.md) |  | [optional] 
**transcription2** | [**EntityReference**](EntityReference.md) |  | [optional] 
**links** | [**EvaluationLinks**](EvaluationLinks.md) |  | [optional] 
**locale** | **String** | The locale of the contained data. | 
**properties** | [**EvaluationProperties**](EvaluationProperties.md) |  | [optional] 
**status** | [**Status**](Status.md) |  | [optional] 


