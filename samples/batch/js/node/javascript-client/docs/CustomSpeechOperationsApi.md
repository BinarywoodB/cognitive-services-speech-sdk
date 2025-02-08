# SpeechServicesApiVersion20241115.CustomSpeechOperationsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operationsGetModelCopy**](CustomSpeechOperationsApi.md#operationsGetModelCopy) | **GET** /operations/models/copy/{id} | Gets the operation identified by the given ID.


<a name="operationsGetModelCopy"></a>
# **operationsGetModelCopy**
> Operation operationsGetModelCopy(id, apiVersion, )

Gets the operation identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechOperationsApi();

var id = "id_example"; // String | The identifier of the operation.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.operationsGetModelCopy(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the operation. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**Operation**](Operation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

