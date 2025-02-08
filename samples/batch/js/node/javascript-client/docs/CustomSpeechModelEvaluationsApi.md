# SpeechServicesApiVersion20241115.CustomSpeechModelEvaluationsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**evaluationsCreate**](CustomSpeechModelEvaluationsApi.md#evaluationsCreate) | **POST** /evaluations | Creates a new evaluation.
[**evaluationsDelete**](CustomSpeechModelEvaluationsApi.md#evaluationsDelete) | **DELETE** /evaluations/{id} | Deletes the evaluation identified by the given ID.
[**evaluationsGet**](CustomSpeechModelEvaluationsApi.md#evaluationsGet) | **GET** /evaluations/{id} | Gets the evaluation identified by the given ID.
[**evaluationsGetFile**](CustomSpeechModelEvaluationsApi.md#evaluationsGetFile) | **GET** /evaluations/{id}/files/{fileId} | Gets one specific file (identified with fileId) from an evaluation (identified with id).
[**evaluationsList**](CustomSpeechModelEvaluationsApi.md#evaluationsList) | **GET** /evaluations | Gets the list of evaluations for the authenticated subscription.
[**evaluationsListFiles**](CustomSpeechModelEvaluationsApi.md#evaluationsListFiles) | **GET** /evaluations/{id}/files | Gets the files of the evaluation identified by the given ID.
[**evaluationsListSupportedLocales**](CustomSpeechModelEvaluationsApi.md#evaluationsListSupportedLocales) | **GET** /evaluations/locales | Gets a list of supported locales for evaluations.
[**evaluationsUpdate**](CustomSpeechModelEvaluationsApi.md#evaluationsUpdate) | **PATCH** /evaluations/{id} | Updates the mutable details of the evaluation identified by its id.


<a name="evaluationsCreate"></a>
# **evaluationsCreate**
> Evaluation evaluationsCreate(apiVersion, evaluation)

Creates a new evaluation.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelEvaluationsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var evaluation = new SpeechServicesApiVersion20241115.Evaluation(); // Evaluation | The details of the new evaluation.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.evaluationsCreate(apiVersion, evaluation, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **evaluation** | [**Evaluation**](Evaluation.md)| The details of the new evaluation. | 

### Return type

[**Evaluation**](Evaluation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="evaluationsDelete"></a>
# **evaluationsDelete**
> evaluationsDelete(id, apiVersion, )

Deletes the evaluation identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelEvaluationsApi();

var id = "id_example"; // String | The identifier of the evaluation.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.evaluationsDelete(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the evaluation. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="evaluationsGet"></a>
# **evaluationsGet**
> Evaluation evaluationsGet(id, apiVersion, )

Gets the evaluation identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelEvaluationsApi();

var id = "id_example"; // String | The identifier of the evaluation.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.evaluationsGet(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the evaluation. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**Evaluation**](Evaluation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="evaluationsGetFile"></a>
# **evaluationsGetFile**
> File evaluationsGetFile(id, fileId, apiVersion, , opts)

Gets one specific file (identified with fileId) from an evaluation (identified with id).

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelEvaluationsApi();

var id = "id_example"; // String | The identifier of the evaluation.

var fileId = "fileId_example"; // String | The identifier of the file.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'sasLifetimeMinutes': 56 // Number | This parameter defines the duration in minutes for which an SAS url should be valid.              The parameter can only be used for operations on speech resources that don't have BYOS enabled. For speech resources              that don't have BYOS enabled, the default SAS validity duration is 12 hours.              For speech resources with BYOS, returned urls do not contain an SAS token.
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.evaluationsGetFile(id, fileId, apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the evaluation. | 
 **fileId** | [**String**](.md)| The identifier of the file. | 
 **apiVersion** | **String**| The requested api version. | 
 **sasLifetimeMinutes** | **Number**| This parameter defines the duration in minutes for which an SAS url should be valid.              The parameter can only be used for operations on speech resources that don't have BYOS enabled. For speech resources              that don't have BYOS enabled, the default SAS validity duration is 12 hours.              For speech resources with BYOS, returned urls do not contain an SAS token. | [optional] 

### Return type

**File**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="evaluationsList"></a>
# **evaluationsList**
> PaginatedEvaluations evaluationsList(apiVersion, , opts)

Gets the list of evaluations for the authenticated subscription.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelEvaluationsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'skip': 56, // Number | Number of datasets that will be skipped.
  'top': 56, // Number | Number of datasets that will be included after skipping.
  'filter': "filter_example" // String | A filtering expression for selecting a subset of the available evaluations.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status and locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=displayName eq 'My evaluation'
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.evaluationsList(apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **skip** | **Number**| Number of datasets that will be skipped. | [optional] 
 **top** | **Number**| Number of datasets that will be included after skipping. | [optional] 
 **filter** | **String**| A filtering expression for selecting a subset of the available evaluations.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status and locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=displayName eq 'My evaluation' | [optional] 

### Return type

[**PaginatedEvaluations**](PaginatedEvaluations.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="evaluationsListFiles"></a>
# **evaluationsListFiles**
> PaginatedFiles evaluationsListFiles(id, apiVersion, , opts)

Gets the files of the evaluation identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelEvaluationsApi();

var id = "id_example"; // String | The identifier of the evaluation.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'sasLifetimeMinutes': 56 // Number | This parameter defines the duration in minutes for which an SAS url should be valid.              The parameter can only be used for operations on speech resources that don't have BYOS enabled. For speech resources              that don't have BYOS enabled, the default SAS validity duration is 12 hours.              For speech resources with BYOS, returned urls do not contain an SAS token.
  'skip': 56, // Number | Number of datasets that will be skipped.
  'top': 56, // Number | Number of datasets that will be included after skipping.
  'filter': "filter_example" // String | A filtering expression for selecting a subset of the available files.              - Supported properties: name, createdDateTime, kind.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime.                - and, or, not are supported.              - Example:                filter=name eq 'myaudio.wav' and kind eq 'Audio'
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.evaluationsListFiles(id, apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the evaluation. | 
 **apiVersion** | **String**| The requested api version. | 
 **sasLifetimeMinutes** | **Number**| This parameter defines the duration in minutes for which an SAS url should be valid.              The parameter can only be used for operations on speech resources that don't have BYOS enabled. For speech resources              that don't have BYOS enabled, the default SAS validity duration is 12 hours.              For speech resources with BYOS, returned urls do not contain an SAS token. | [optional] 
 **skip** | **Number**| Number of datasets that will be skipped. | [optional] 
 **top** | **Number**| Number of datasets that will be included after skipping. | [optional] 
 **filter** | **String**| A filtering expression for selecting a subset of the available files.              - Supported properties: name, createdDateTime, kind.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime.                - and, or, not are supported.              - Example:                filter=name eq 'myaudio.wav' and kind eq 'Audio' | [optional] 

### Return type

[**PaginatedFiles**](PaginatedFiles.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="evaluationsListSupportedLocales"></a>
# **evaluationsListSupportedLocales**
> ['String'] evaluationsListSupportedLocales(apiVersion, )

Gets a list of supported locales for evaluations.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelEvaluationsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.evaluationsListSupportedLocales(apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 

### Return type

**['String']**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="evaluationsUpdate"></a>
# **evaluationsUpdate**
> Evaluation evaluationsUpdate(id, apiVersion, evaluationUpdate)

Updates the mutable details of the evaluation identified by its id.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelEvaluationsApi();

var id = "id_example"; // String | The identifier of the evaluation.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var evaluationUpdate = new SpeechServicesApiVersion20241115.EvaluationUpdate(); // EvaluationUpdate | The object containing the updated fields of the evaluation.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.evaluationsUpdate(id, apiVersion, evaluationUpdate, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the evaluation. | 
 **apiVersion** | **String**| The requested api version. | 
 **evaluationUpdate** | [**EvaluationUpdate**](EvaluationUpdate.md)| The object containing the updated fields of the evaluation. | 

### Return type

[**Evaluation**](Evaluation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: application/json

