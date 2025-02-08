# SpeechServicesApiVersion20241115.InnerError

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | High level error message. | [optional] 
**target** | **String** | The source of the error. For example it would be \"documents\" or \"document id\" in case of invalid document. | [optional] 
**innerError** | [**InnerError**](InnerError.md) |  | [optional] 
**code** | [**DetailedErrorCode**](DetailedErrorCode.md) |  | [optional] 
**details** | **{String: String}** | Additional supportive details regarding the error and/or expected policies. | [optional] 


