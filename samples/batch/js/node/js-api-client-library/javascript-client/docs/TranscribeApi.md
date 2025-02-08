# SpeechServicesApiVersion20241115.TranscribeApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transcriptionsTranscribe**](TranscribeApi.md#transcriptionsTranscribe) | **POST** /transcriptions:transcribe | Synchronous transcription of an audio file.


<a name="transcriptionsTranscribe"></a>
# **transcriptionsTranscribe**
> TranscribeResult transcriptionsTranscribe(apiVersion, audio, opts)

Synchronous transcription of an audio file.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.TranscribeApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var audio = "/path/to/file.txt"; // File | The content of the audio file to be transcribed. The audio file must be shorter than 2 hours in audio duration and smaller than 250 MB in size.

var opts = { 
  'definition': "definition_example" // String | Metadata for a transcription request. This field contains a JSON-serialized object of type `TranscribeDefinition`.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.transcriptionsTranscribe(apiVersion, audio, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **audio** | **File**| The content of the audio file to be transcribed. The audio file must be shorter than 2 hours in audio duration and smaller than 250 MB in size. | 
 **definition** | **String**| Metadata for a transcription request. This field contains a JSON-serialized object of type `TranscribeDefinition`. | [optional] 

### Return type

[**TranscribeResult**](TranscribeResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

