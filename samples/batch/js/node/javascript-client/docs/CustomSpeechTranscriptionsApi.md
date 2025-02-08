# SpeechServicesApiVersion20241115.CustomSpeechTranscriptionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transcriptionsDelete**](CustomSpeechTranscriptionsApi.md#transcriptionsDelete) | **DELETE** /transcriptions/{id} | Deletes the specified transcription task.
[**transcriptionsGet**](CustomSpeechTranscriptionsApi.md#transcriptionsGet) | **GET** /transcriptions/{id} | Gets the transcription identified by the given ID.
[**transcriptionsGetFile**](CustomSpeechTranscriptionsApi.md#transcriptionsGetFile) | **GET** /transcriptions/{id}/files/{fileId} | Gets one specific file (identified with fileId) from a transcription (identified with id).
[**transcriptionsList**](CustomSpeechTranscriptionsApi.md#transcriptionsList) | **GET** /transcriptions | Gets a list of transcriptions for the authenticated subscription.
[**transcriptionsListFiles**](CustomSpeechTranscriptionsApi.md#transcriptionsListFiles) | **GET** /transcriptions/{id}/files | Gets the files of the transcription identified by the given ID.
[**transcriptionsListSupportedLocales**](CustomSpeechTranscriptionsApi.md#transcriptionsListSupportedLocales) | **GET** /transcriptions/locales | Gets a list of supported locales for offline transcriptions.
[**transcriptionsSubmit**](CustomSpeechTranscriptionsApi.md#transcriptionsSubmit) | **POST** /transcriptions:submit | Submits a new transcription job.
[**transcriptionsUpdate**](CustomSpeechTranscriptionsApi.md#transcriptionsUpdate) | **PATCH** /transcriptions/{id} | Updates the mutable details of the transcription identified by its ID.


<a name="transcriptionsDelete"></a>
# **transcriptionsDelete**
> transcriptionsDelete(id, apiVersion, )

Deletes the specified transcription task.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechTranscriptionsApi();

var id = "id_example"; // String | The identifier of the transcription.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.transcriptionsDelete(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the transcription. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="transcriptionsGet"></a>
# **transcriptionsGet**
> Transcription transcriptionsGet(id, apiVersion, )

Gets the transcription identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechTranscriptionsApi();

var id = "id_example"; // String | The identifier of the transcription.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.transcriptionsGet(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the transcription. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**Transcription**](Transcription.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="transcriptionsGetFile"></a>
# **transcriptionsGetFile**
> File transcriptionsGetFile(id, fileId, apiVersion, , opts)

Gets one specific file (identified with fileId) from a transcription (identified with id).

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechTranscriptionsApi();

var id = "id_example"; // String | The identifier of the transcription.

var fileId = "fileId_example"; // String | The identifier of the file.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'sasLifetimeMinutes': 56 // Number | This parameter defines the duration in minutes for which an SAS url should be valid.              The parameter can only be used for operations on speech resources that don't have BYOS enabled and transcriptions without a destinationContainerUrl. For speech resources              that don't have BYOS enabled, the default SAS validity duration is 12 hours.              For speech resources with BYOS and transcriptions with a destinationContainerUrl, returned urls do not contain an SAS token.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.transcriptionsGetFile(id, fileId, apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the transcription. | 
 **fileId** | [**String**](.md)| The identifier of the file. | 
 **apiVersion** | **String**| The requested api version. | 
 **sasLifetimeMinutes** | **Number**| This parameter defines the duration in minutes for which an SAS url should be valid.              The parameter can only be used for operations on speech resources that don't have BYOS enabled and transcriptions without a destinationContainerUrl. For speech resources              that don't have BYOS enabled, the default SAS validity duration is 12 hours.              For speech resources with BYOS and transcriptions with a destinationContainerUrl, returned urls do not contain an SAS token. | [optional] 

### Return type

**File**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="transcriptionsList"></a>
# **transcriptionsList**
> PaginatedTranscriptions transcriptionsList(apiVersion, , opts)

Gets a list of transcriptions for the authenticated subscription.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechTranscriptionsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'skip': 56, // Number | Number of datasets that will be skipped.
  'top': 56, // Number | Number of datasets that will be included after skipping.
  'filter': "filter_example" // String | A filtering expression for selecting a subset of the available transcriptions.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=createdDateTime gt 2022-02-01T11:00:00Z
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.transcriptionsList(apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **skip** | **Number**| Number of datasets that will be skipped. | [optional] 
 **top** | **Number**| Number of datasets that will be included after skipping. | [optional] 
 **filter** | **String**| A filtering expression for selecting a subset of the available transcriptions.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=createdDateTime gt 2022-02-01T11:00:00Z | [optional] 

### Return type

[**PaginatedTranscriptions**](PaginatedTranscriptions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="transcriptionsListFiles"></a>
# **transcriptionsListFiles**
> PaginatedFiles transcriptionsListFiles(id, apiVersion, , opts)

Gets the files of the transcription identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechTranscriptionsApi();

var id = "id_example"; // String | The identifier of the transcription.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'sasLifetimeMinutes': 56, // Number | This parameter defines the duration in minutes for which an SAS url should be valid.              The parameter can only be used for operations on speech resources that don't have BYOS enabled and transcriptions without a destinationContainerUrl. For speech resources              that don't have BYOS enabled, the default SAS validity duration is 12 hours.              For speech resources with BYOS and transcriptions with a destinationContainerUrl, returned urls do not contain an SAS token.
  'skip': 56, // Number | Number of datasets that will be skipped.
  'top': 56, // Number | Number of datasets that will be included after skipping.
  'filter': "filter_example" // String | A filtering expression for selecting a subset of the available files.              - Supported properties: name, createdDateTime, kind.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime.                - and, or, not are supported.              - Example:                filter=name eq 'myaudio.wav.json' and kind eq 'Transcription'
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.transcriptionsListFiles(id, apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the transcription. | 
 **apiVersion** | **String**| The requested api version. | 
 **sasLifetimeMinutes** | **Number**| This parameter defines the duration in minutes for which an SAS url should be valid.              The parameter can only be used for operations on speech resources that don't have BYOS enabled and transcriptions without a destinationContainerUrl. For speech resources              that don't have BYOS enabled, the default SAS validity duration is 12 hours.              For speech resources with BYOS and transcriptions with a destinationContainerUrl, returned urls do not contain an SAS token. | [optional] 
 **skip** | **Number**| Number of datasets that will be skipped. | [optional] 
 **top** | **Number**| Number of datasets that will be included after skipping. | [optional] 
 **filter** | **String**| A filtering expression for selecting a subset of the available files.              - Supported properties: name, createdDateTime, kind.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime.                - and, or, not are supported.              - Example:                filter=name eq 'myaudio.wav.json' and kind eq 'Transcription' | [optional] 

### Return type

[**PaginatedFiles**](PaginatedFiles.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="transcriptionsListSupportedLocales"></a>
# **transcriptionsListSupportedLocales**
> TranscriptionLocales transcriptionsListSupportedLocales(apiVersion, )

Gets a list of supported locales for offline transcriptions.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechTranscriptionsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.transcriptionsListSupportedLocales(apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**TranscriptionLocales**](TranscriptionLocales.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="transcriptionsSubmit"></a>
# **transcriptionsSubmit**
> Transcription transcriptionsSubmit(apiVersion, transcription)

Submits a new transcription job.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechTranscriptionsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var transcription = new SpeechServicesApiVersion20241115.Transcription(); // Transcription | The details of the new transcription.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.transcriptionsSubmit(apiVersion, transcription, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **transcription** | [**Transcription**](Transcription.md)| The details of the new transcription. | 

### Return type

[**Transcription**](Transcription.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="transcriptionsUpdate"></a>
# **transcriptionsUpdate**
> Transcription transcriptionsUpdate(id, apiVersion, transcriptionUpdate)

Updates the mutable details of the transcription identified by its ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechTranscriptionsApi();

var id = "id_example"; // String | The identifier of the transcription.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var transcriptionUpdate = new SpeechServicesApiVersion20241115.TranscriptionUpdate(); // TranscriptionUpdate | The updated values for the transcription.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.transcriptionsUpdate(id, apiVersion, transcriptionUpdate, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the transcription. | 
 **apiVersion** | **String**| The requested api version. | 
 **transcriptionUpdate** | [**TranscriptionUpdate**](TranscriptionUpdate.md)| The updated values for the transcription. | 

### Return type

[**Transcription**](Transcription.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: application/json

