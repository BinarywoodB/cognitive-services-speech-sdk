# SpeechServicesApiVersion20241115.CustomSpeechModelsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modelsAuthorizeCopy**](CustomSpeechModelsApi.md#modelsAuthorizeCopy) | **POST** /models:authorizecopy | Allows another speech resource (source) to copy a model to this speech resource (target).
[**modelsCopy**](CustomSpeechModelsApi.md#modelsCopy) | **POST** /models/{id}:copy | Copies a model from one subscription to another.
[**modelsCreate**](CustomSpeechModelsApi.md#modelsCreate) | **POST** /models | Creates a new model.
[**modelsDelete**](CustomSpeechModelsApi.md#modelsDelete) | **DELETE** /models/{id} | Deletes the model identified by the given ID.
[**modelsGetBaseModel**](CustomSpeechModelsApi.md#modelsGetBaseModel) | **GET** /models/base/{id} | Gets the base model identified by the given ID.
[**modelsGetBaseModelManifest**](CustomSpeechModelsApi.md#modelsGetBaseModelManifest) | **GET** /models/base/{id}/manifest | Returns an manifest for this base model which can be used in an on-premise container.
[**modelsGetCustomModel**](CustomSpeechModelsApi.md#modelsGetCustomModel) | **GET** /models/{id} | Gets the model identified by the given ID.
[**modelsGetCustomModelManifest**](CustomSpeechModelsApi.md#modelsGetCustomModelManifest) | **GET** /models/{id}/manifest | Returns an manifest for this model which can be used in an on-premise container.
[**modelsGetFile**](CustomSpeechModelsApi.md#modelsGetFile) | **GET** /models/{id}/files/{fileId} | Gets one specific file (identified with fileId) from a model (identified with id).
[**modelsListBaseModels**](CustomSpeechModelsApi.md#modelsListBaseModels) | **GET** /models/base | Gets the list of base models for the authenticated subscription.
[**modelsListCustomModels**](CustomSpeechModelsApi.md#modelsListCustomModels) | **GET** /models | Gets the list of custom models for the authenticated subscription.
[**modelsListFiles**](CustomSpeechModelsApi.md#modelsListFiles) | **GET** /models/{id}/files | Gets the files of the model identified by the given ID.
[**modelsListSupportedLocales**](CustomSpeechModelsApi.md#modelsListSupportedLocales) | **GET** /models/locales | Gets a list of supported locales for model adaptation.
[**modelsUpdate**](CustomSpeechModelsApi.md#modelsUpdate) | **PATCH** /models/{id} | Updates the metadata of the model identified by the given ID.


<a name="modelsAuthorizeCopy"></a>
# **modelsAuthorizeCopy**
> ModelCopyAuthorization modelsAuthorizeCopy(apiVersion, modelCopyAuthorizationDefinition)

Allows another speech resource (source) to copy a model to this speech resource (target).

This method can be used to allow copying a model from another speech resource.  Only custom models can be copied from another speech resource.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var modelCopyAuthorizationDefinition = new SpeechServicesApiVersion20241115.ModelCopyAuthorizationDefinition(); // ModelCopyAuthorizationDefinition | The body contains the Azure Resource ID of the source speech resource.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsAuthorizeCopy(apiVersion, modelCopyAuthorizationDefinition, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **modelCopyAuthorizationDefinition** | [**ModelCopyAuthorizationDefinition**](ModelCopyAuthorizationDefinition.md)| The body contains the Azure Resource ID of the source speech resource. | 

### Return type

[**ModelCopyAuthorization**](ModelCopyAuthorization.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="modelsCopy"></a>
# **modelsCopy**
> Operation modelsCopy(id, apiVersion, modelCopyAuthorization)

Copies a model from one subscription to another.

This method can be used to copy a model from this speech resource to a target one.  The authorization is obtained on the target speech resource.  Only custom models can be copied to another speech resource.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var id = "id_example"; // String | The identifier of the model that will be copied.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var modelCopyAuthorization = new SpeechServicesApiVersion20241115.ModelCopyAuthorization(); // ModelCopyAuthorization | The body contains the authorization to copy to the target speech resource.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsCopy(id, apiVersion, modelCopyAuthorization, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the model that will be copied. | 
 **apiVersion** | **String**| The requested api version. | 
 **modelCopyAuthorization** | [**ModelCopyAuthorization**](ModelCopyAuthorization.md)| The body contains the authorization to copy to the target speech resource. | 

### Return type

[**Operation**](Operation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="modelsCreate"></a>
# **modelsCreate**
> CustomModel modelsCreate(apiVersion, model)

Creates a new model.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var model = new SpeechServicesApiVersion20241115.CustomModel(); // CustomModel | The details of the new model.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsCreate(apiVersion, model, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **model** | [**CustomModel**](CustomModel.md)| The details of the new model. | 

### Return type

[**CustomModel**](CustomModel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="modelsDelete"></a>
# **modelsDelete**
> modelsDelete(id, apiVersion, )

Deletes the model identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var id = "id_example"; // String | The identifier of the model.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.modelsDelete(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the model. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="modelsGetBaseModel"></a>
# **modelsGetBaseModel**
> BaseModel modelsGetBaseModel(id, apiVersion, )

Gets the base model identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var id = "id_example"; // String | The identifier of the base model.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsGetBaseModel(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the base model. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**BaseModel**](BaseModel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="modelsGetBaseModelManifest"></a>
# **modelsGetBaseModelManifest**
> ModelManifest modelsGetBaseModelManifest(id, sasLifetimeMinutes, apiVersion, )

Returns an manifest for this base model which can be used in an on-premise container.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var id = "id_example"; // String | The ID of the model to generate a manifest for.

var sasLifetimeMinutes = 56; // Number | The duration in minutes that an SAS url should be valid.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsGetBaseModelManifest(id, sasLifetimeMinutes, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The ID of the model to generate a manifest for. | 
 **sasLifetimeMinutes** | **Number**| The duration in minutes that an SAS url should be valid. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**ModelManifest**](ModelManifest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="modelsGetCustomModel"></a>
# **modelsGetCustomModel**
> CustomModel modelsGetCustomModel(id, apiVersion, )

Gets the model identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var id = "id_example"; // String | The identifier of the model.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsGetCustomModel(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the model. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**CustomModel**](CustomModel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="modelsGetCustomModelManifest"></a>
# **modelsGetCustomModelManifest**
> ModelManifest modelsGetCustomModelManifest(id, sasLifetimeMinutes, apiVersion, )

Returns an manifest for this model which can be used in an on-premise container.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var id = "id_example"; // String | The ID of the model to generate a manifest for.

var sasLifetimeMinutes = 56; // Number | The duration in minutes that an SAS url should be valid.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsGetCustomModelManifest(id, sasLifetimeMinutes, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The ID of the model to generate a manifest for. | 
 **sasLifetimeMinutes** | **Number**| The duration in minutes that an SAS url should be valid. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**ModelManifest**](ModelManifest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="modelsGetFile"></a>
# **modelsGetFile**
> File modelsGetFile(id, fileId, apiVersion, , opts)

Gets one specific file (identified with fileId) from a model (identified with id).

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var id = "id_example"; // String | The identifier of the model.

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
apiInstance.modelsGetFile(id, fileId, apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the model. | 
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

<a name="modelsListBaseModels"></a>
# **modelsListBaseModels**
> PaginatedBaseModels modelsListBaseModels(apiVersion, , opts)

Gets the list of base models for the authenticated subscription.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'skip': 56, // Number | Number of datasets that will be skipped.
  'top': 56, // Number | Number of datasets that will be included after skipping.
  'filter': "filter_example" // String | A filtering expression for selecting a subset of the available base models.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=status eq 'NotStarted' or status eq 'Running'
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsListBaseModels(apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **skip** | **Number**| Number of datasets that will be skipped. | [optional] 
 **top** | **Number**| Number of datasets that will be included after skipping. | [optional] 
 **filter** | **String**| A filtering expression for selecting a subset of the available base models.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=status eq 'NotStarted' or status eq 'Running' | [optional] 

### Return type

[**PaginatedBaseModels**](PaginatedBaseModels.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="modelsListCustomModels"></a>
# **modelsListCustomModels**
> PaginatedCustomModels modelsListCustomModels(apiVersion, , opts)

Gets the list of custom models for the authenticated subscription.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'skip': 56, // Number | Number of datasets that will be skipped.
  'top': 56, // Number | Number of datasets that will be included after skipping.
  'filter': "filter_example" // String | A filtering expression for selecting a subset of the available models.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=status eq 'NotStarted' or status eq 'Running'
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsListCustomModels(apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **skip** | **Number**| Number of datasets that will be skipped. | [optional] 
 **top** | **Number**| Number of datasets that will be included after skipping. | [optional] 
 **filter** | **String**| A filtering expression for selecting a subset of the available models.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=status eq 'NotStarted' or status eq 'Running' | [optional] 

### Return type

[**PaginatedCustomModels**](PaginatedCustomModels.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="modelsListFiles"></a>
# **modelsListFiles**
> PaginatedFiles modelsListFiles(id, apiVersion, , opts)

Gets the files of the model identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var id = "id_example"; // String | The identifier of the model.

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
apiInstance.modelsListFiles(id, apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the model. | 
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

<a name="modelsListSupportedLocales"></a>
# **modelsListSupportedLocales**
> ['String'] modelsListSupportedLocales(apiVersion, )

Gets a list of supported locales for model adaptation.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsListSupportedLocales(apiVersion, , callback);
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

<a name="modelsUpdate"></a>
# **modelsUpdate**
> CustomModel modelsUpdate(id, apiVersion, modelUpdate)

Updates the metadata of the model identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechModelsApi();

var id = "id_example"; // String | The identifier of the model.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var modelUpdate = new SpeechServicesApiVersion20241115.ModelUpdate(); // ModelUpdate | The updated values for the model.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.modelsUpdate(id, apiVersion, modelUpdate, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the model. | 
 **apiVersion** | **String**| The requested api version. | 
 **modelUpdate** | [**ModelUpdate**](ModelUpdate.md)| The updated values for the model. | 

### Return type

[**CustomModel**](CustomModel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: application/json

