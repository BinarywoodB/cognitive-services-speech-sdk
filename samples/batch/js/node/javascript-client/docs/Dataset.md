# SpeechServicesApiVersion20241115.Dataset

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**self** | **String** | The location of this entity. | [optional] 
**displayName** | **String** | The display name of the object. | 
**description** | **String** | The description of the object. | [optional] 
**customProperties** | **{String: String}** | The custom properties of this entity. The maximum allowed key length is 64 characters, the maximum allowed value length is 256 characters and the count of allowed entries is 10. | [optional] 
**locale** | **String** | The locale of the contained data. | 
**createdDateTime** | **Date** | The time-stamp when the object was created. The time stamp is encoded as ISO 8601 date and time format (\"YYYY-MM-DDThh:mm:ssZ\", see https://en.wikipedia.org/wiki/ISO_8601#Combined_date_and_time_representations). | [optional] 
**lastActionDateTime** | **Date** | The time-stamp when the current status was entered. The time stamp is encoded as ISO 8601 date and time format (\"YYYY-MM-DDThh:mm:ssZ\", see https://en.wikipedia.org/wiki/ISO_8601#Combined_date_and_time_representations). | [optional] 
**kind** | [**DatasetKind**](DatasetKind.md) |  | 
**links** | [**DatasetLinks**](DatasetLinks.md) |  | [optional] 
**properties** | [**DatasetProperties**](DatasetProperties.md) |  | [optional] 
**contentUrl** | **String** | The URL of the data for the dataset. | [optional] 
**status** | [**Status**](Status.md) |  | [optional] 


