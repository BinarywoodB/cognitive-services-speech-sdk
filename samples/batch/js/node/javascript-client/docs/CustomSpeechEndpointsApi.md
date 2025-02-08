# SpeechServicesApiVersion20241115.CustomSpeechEndpointsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**endpointsCreate**](CustomSpeechEndpointsApi.md#endpointsCreate) | **POST** /endpoints | Creates a new endpoint.
[**endpointsDelete**](CustomSpeechEndpointsApi.md#endpointsDelete) | **DELETE** /endpoints/{id} | Deletes the endpoint identified by the given ID.
[**endpointsGet**](CustomSpeechEndpointsApi.md#endpointsGet) | **GET** /endpoints/{id} | Gets the endpoint identified by the given ID.
[**endpointsList**](CustomSpeechEndpointsApi.md#endpointsList) | **GET** /endpoints | Gets the list of endpoints for the authenticated subscription.
[**endpointsListSupportedLocales**](CustomSpeechEndpointsApi.md#endpointsListSupportedLocales) | **GET** /endpoints/locales | Gets a list of supported locales for endpoint creations.
[**endpointsUpdate**](CustomSpeechEndpointsApi.md#endpointsUpdate) | **PATCH** /endpoints/{id} | Updates the metadata of the endpoint identified by the given ID.


<a name="endpointsCreate"></a>
# **endpointsCreate**
> Endpoint endpointsCreate(apiVersion, endpoint)

Creates a new endpoint.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechEndpointsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var endpoint = new SpeechServicesApiVersion20241115.Endpoint(); // Endpoint | The details of the endpoint.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.endpointsCreate(apiVersion, endpoint, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **endpoint** | [**Endpoint**](Endpoint.md)| The details of the endpoint. | 

### Return type

[**Endpoint**](Endpoint.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="endpointsDelete"></a>
# **endpointsDelete**
> endpointsDelete(id, apiVersion, )

Deletes the endpoint identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechEndpointsApi();

var id = "id_example"; // String | The identifier of the endpoint.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.endpointsDelete(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the endpoint. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="endpointsGet"></a>
# **endpointsGet**
> Endpoint endpointsGet(id, apiVersion, )

Gets the endpoint identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechEndpointsApi();

var id = "id_example"; // String | The identifier of the endpoint.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.endpointsGet(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the endpoint. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**Endpoint**](Endpoint.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="endpointsList"></a>
# **endpointsList**
> PaginatedEndpoints endpointsList(apiVersion, , opts)

Gets the list of endpoints for the authenticated subscription.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechEndpointsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'skip': 56, // Number | Number of datasets that will be skipped.
  'top': 56, // Number | Number of datasets that will be included after skipping.
  'filter': "filter_example" // String | A filtering expression for selecting a subset of the available endpoints.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=locale eq 'en-US'
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.endpointsList(apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **skip** | **Number**| Number of datasets that will be skipped. | [optional] 
 **top** | **Number**| Number of datasets that will be included after skipping. | [optional] 
 **filter** | **String**| A filtering expression for selecting a subset of the available endpoints.              - Supported properties: displayName, description, createdDateTime, lastActionDateTime, status, locale.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=locale eq 'en-US' | [optional] 

### Return type

[**PaginatedEndpoints**](PaginatedEndpoints.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="endpointsListSupportedLocales"></a>
# **endpointsListSupportedLocales**
> ['String'] endpointsListSupportedLocales(apiVersion, )

Gets a list of supported locales for endpoint creations.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechEndpointsApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.endpointsListSupportedLocales(apiVersion, , callback);
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

<a name="endpointsUpdate"></a>
# **endpointsUpdate**
> Endpoint endpointsUpdate(id, apiVersion, endpointUpdate)

Updates the metadata of the endpoint identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechEndpointsApi();

var id = "id_example"; // String | The identifier of the endpoint.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var endpointUpdate = new SpeechServicesApiVersion20241115.EndpointUpdate(); // EndpointUpdate | The updated values for the endpoint.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.endpointsUpdate(id, apiVersion, endpointUpdate, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the endpoint. | 
 **apiVersion** | **String**| The requested api version. | 
 **endpointUpdate** | [**EndpointUpdate**](EndpointUpdate.md)| The updated values for the endpoint. | 

### Return type

[**Endpoint**](Endpoint.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: application/json

