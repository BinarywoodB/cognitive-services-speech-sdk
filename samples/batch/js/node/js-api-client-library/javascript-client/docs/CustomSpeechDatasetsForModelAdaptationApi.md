# SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**datasetsCommitBlocks**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsCommitBlocks) | **POST** /datasets/{id}/blocks:commit | Commit block list to complete the upload of the dataset.
[**datasetsCreate**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsCreate) | **POST** /datasets | Uploads and creates a new dataset by getting the data from a specified URL or starts waiting for data blocks to be uploaded.
[**datasetsDelete**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsDelete) | **DELETE** /datasets/{id} | Deletes the specified dataset.
[**datasetsGet**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsGet) | **GET** /datasets/{id} | Gets the dataset identified by the given ID.
[**datasetsGetBlocks**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsGetBlocks) | **GET** /datasets/{id}/blocks | Gets the list of uploaded blocks for this dataset.
[**datasetsGetFile**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsGetFile) | **GET** /datasets/{id}/files/{fileId} | Gets one specific file (identified with fileId) from a dataset (identified with id).
[**datasetsList**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsList) | **GET** /datasets | Gets a list of datasets for the authenticated subscription.
[**datasetsListFiles**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsListFiles) | **GET** /datasets/{id}/files | Gets the files of the dataset identified by the given ID.
[**datasetsListSupportedLocales**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsListSupportedLocales) | **GET** /datasets/locales | Gets a list of supported locales for datasets.
[**datasetsUpdate**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsUpdate) | **PATCH** /datasets/{id} | Updates the mutable details of the dataset identified by its ID.
[**datasetsUploadBlock**](CustomSpeechDatasetsForModelAdaptationApi.md#datasetsUploadBlock) | **PUT** /datasets/{id}/blocks | Upload a block of data for the dataset. The maximum size of the block is 8MiB.


<a name="datasetsCommitBlocks"></a>
# **datasetsCommitBlocks**
> datasetsCommitBlocks(id, apiVersion, blockList)

Commit block list to complete the upload of the dataset.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var id = "id_example"; // String | The identifier of the dataset.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var blockList = [new SpeechServicesApiVersion20241115.CommitBlocksEntry()]; // [CommitBlocksEntry] | The list of blocks that compile the dataset.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.datasetsCommitBlocks(id, apiVersion, blockList, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the dataset. | 
 **apiVersion** | **String**| The requested api version. | 
 **blockList** | [**[CommitBlocksEntry]**](CommitBlocksEntry.md)| The list of blocks that compile the dataset. | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="datasetsCreate"></a>
# **datasetsCreate**
> Dataset datasetsCreate(apiVersion, dataset)

Uploads and creates a new dataset by getting the data from a specified URL or starts waiting for data blocks to be uploaded.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var dataset = new SpeechServicesApiVersion20241115.Dataset(); // Dataset | Definition for the new dataset.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.datasetsCreate(apiVersion, dataset, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **dataset** | [**Dataset**](Dataset.md)| Definition for the new dataset. | 

### Return type

[**Dataset**](Dataset.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="datasetsDelete"></a>
# **datasetsDelete**
> datasetsDelete(id, apiVersion, )

Deletes the specified dataset.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var id = "id_example"; // String | The identifier of the dataset.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.datasetsDelete(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the dataset. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="datasetsGet"></a>
# **datasetsGet**
> Dataset datasetsGet(id, apiVersion, )

Gets the dataset identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var id = "id_example"; // String | The identifier of the dataset.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.datasetsGet(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the dataset. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**Dataset**](Dataset.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="datasetsGetBlocks"></a>
# **datasetsGetBlocks**
> UploadedBlocks datasetsGetBlocks(id, apiVersion, )

Gets the list of uploaded blocks for this dataset.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var id = "id_example"; // String | The identifier of the dataset.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.datasetsGetBlocks(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the dataset. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**UploadedBlocks**](UploadedBlocks.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="datasetsGetFile"></a>
# **datasetsGetFile**
> File datasetsGetFile(id, fileId, apiVersion, , opts)

Gets one specific file (identified with fileId) from a dataset (identified with id).

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var id = "id_example"; // String | The identifier of the dataset.

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
apiInstance.datasetsGetFile(id, fileId, apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the dataset. | 
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

<a name="datasetsList"></a>
# **datasetsList**
> PaginatedDatasets datasetsList(apiVersion, , opts)

Gets a list of datasets for the authenticated subscription.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'skip': 56, // Number | Number of datasets that will be skipped.
  'top': 56, // Number | Number of datasets that will be included after skipping.
  'filter': "filter_example" // String | A filtering expression for selecting a subset of the available datasets.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale, kind.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              -Example:               filter=createdDateTime gt 2022-02-01T11:00:00Z and displayName eq 'My dataset'
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.datasetsList(apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **skip** | **Number**| Number of datasets that will be skipped. | [optional] 
 **top** | **Number**| Number of datasets that will be included after skipping. | [optional] 
 **filter** | **String**| A filtering expression for selecting a subset of the available datasets.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale, kind.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              -Example:               filter=createdDateTime gt 2022-02-01T11:00:00Z and displayName eq 'My dataset' | [optional] 

### Return type

[**PaginatedDatasets**](PaginatedDatasets.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="datasetsListFiles"></a>
# **datasetsListFiles**
> PaginatedFiles datasetsListFiles(id, apiVersion, , opts)

Gets the files of the dataset identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var id = "id_example"; // String | The identifier of the dataset.

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
apiInstance.datasetsListFiles(id, apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the dataset. | 
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

<a name="datasetsListSupportedLocales"></a>
# **datasetsListSupportedLocales**
> DatasetLocales datasetsListSupportedLocales(apiVersion, )

Gets a list of supported locales for datasets.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.datasetsListSupportedLocales(apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**DatasetLocales**](DatasetLocales.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="datasetsUpdate"></a>
# **datasetsUpdate**
> Dataset datasetsUpdate(id, apiVersion, datasetUpdate)

Updates the mutable details of the dataset identified by its ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var id = "id_example"; // String | The identifier of the dataset.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var datasetUpdate = new SpeechServicesApiVersion20241115.DatasetUpdate(); // DatasetUpdate | The updated values for the dataset.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.datasetsUpdate(id, apiVersion, datasetUpdate, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the dataset. | 
 **apiVersion** | **String**| The requested api version. | 
 **datasetUpdate** | [**DatasetUpdate**](DatasetUpdate.md)| The updated values for the dataset. | 

### Return type

[**Dataset**](Dataset.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: application/json

<a name="datasetsUploadBlock"></a>
# **datasetsUploadBlock**
> datasetsUploadBlock(id, blockid, apiVersion, body)

Upload a block of data for the dataset. The maximum size of the block is 8MiB.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechDatasetsForModelAdaptationApi();

var id = "id_example"; // String | The identifier of the dataset.

var blockid = "blockid_example"; // String | A valid Base64 string value that identifies the block. Prior to encoding, the string must be less than or equal to 64 bytes in size. For a given blob, the length of the value specified for the blockid parameter must be the same size for each block. Note that the Base64 string must be URL-encoded.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var body = "QmFzZTY0IGV4YW1wbGU="; // Blob | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.datasetsUploadBlock(id, blockid, apiVersion, body, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the dataset. | 
 **blockid** | **String**| A valid Base64 string value that identifies the block. Prior to encoding, the string must be less than or equal to 64 bytes in size. For a given blob, the length of the value specified for the blockid parameter must be the same size for each block. Note that the Base64 string must be URL-encoded. | 
 **apiVersion** | **String**| The requested api version. | 
 **body** | **Blob**|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

