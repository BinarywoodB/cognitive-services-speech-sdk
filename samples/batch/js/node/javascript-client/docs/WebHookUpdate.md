# SpeechServicesApiVersion20241115.WebHookUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayName** | **String** | The name of the object. | [optional] 
**description** | **String** | The description of the object. | [optional] 
**webUrl** | **String** | The registered URL that will be used to send the POST requests for the registered events to. | [optional] 
**customProperties** | **{String: String}** | The custom properties of this entity. The maximum allowed key length is 64 characters, the maximum allowed value length is 256 characters and the count of allowed entries is 10. | [optional] 
**properties** | [**WebHookPropertiesUpdate**](WebHookPropertiesUpdate.md) |  | [optional] 
**events** | [**WebHookEvents**](WebHookEvents.md) |  | [optional] 


