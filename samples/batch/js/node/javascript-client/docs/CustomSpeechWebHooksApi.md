# SpeechServicesApiVersion20241115.CustomSpeechWebHooksApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webHooksCreate**](CustomSpeechWebHooksApi.md#webHooksCreate) | **POST** /webhooks | Creates a new web hook.
[**webHooksDelete**](CustomSpeechWebHooksApi.md#webHooksDelete) | **DELETE** /webhooks/{id} | Deletes the web hook identified by the given ID.
[**webHooksGet**](CustomSpeechWebHooksApi.md#webHooksGet) | **GET** /webhooks/{id} | Gets the web hook identified by the given ID.
[**webHooksList**](CustomSpeechWebHooksApi.md#webHooksList) | **GET** /webhooks | Gets the list of web hooks for the authenticated subscription.
[**webHooksPing**](CustomSpeechWebHooksApi.md#webHooksPing) | **POST** /webhooks/{id}:ping | Sends a ping event to the registered URL.
[**webHooksTest**](CustomSpeechWebHooksApi.md#webHooksTest) | **POST** /webhooks/{id}:test | Sends a request for each registered event type to the registered URL.
[**webHooksUpdate**](CustomSpeechWebHooksApi.md#webHooksUpdate) | **PATCH** /webhooks/{id} | Updates the web hook identified by the given ID.


<a name="webHooksCreate"></a>
# **webHooksCreate**
> WebHook webHooksCreate(apiVersion, webHook)

Creates a new web hook.

If the property secret in the configuration is present and contains a non-empty string, it will be used to create a SHA256 hash of the payload with  the secret as HMAC key. This hash will be set as X-MicrosoftSpeechServices-Signature header when calling back into the registered URL.                When calling back into the registered URL, the request will contain a X-MicrosoftSpeechServices-Event header containing one of the registered event  types. There will be one request per registered event type.                After successfully registering the web hook, it will not be usable until a challenge/response is completed. To do this, a request with the event type  challenge will be made with a query parameter called validationToken. Respond to the challenge with a 200 OK containing the value of the validationToken  query parameter as the response body. When the challenge/response is successfully completed, the web hook will begin receiving events.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechWebHooksApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var webHook = new SpeechServicesApiVersion20241115.WebHook(); // WebHook | The details of the new web hook.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.webHooksCreate(apiVersion, webHook, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **webHook** | [**WebHook**](WebHook.md)| The details of the new web hook. | 

### Return type

[**WebHook**](WebHook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="webHooksDelete"></a>
# **webHooksDelete**
> webHooksDelete(id, apiVersion, )

Deletes the web hook identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechWebHooksApi();

var id = "id_example"; // String | The identifier of the web hook.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.webHooksDelete(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the web hook. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="webHooksGet"></a>
# **webHooksGet**
> WebHook webHooksGet(id, apiVersion, )

Gets the web hook identified by the given ID.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechWebHooksApi();

var id = "id_example"; // String | The identifier of the web hook.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.webHooksGet(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the web hook. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

[**WebHook**](WebHook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="webHooksList"></a>
# **webHooksList**
> PaginatedWebHooks webHooksList(apiVersion, , opts)

Gets the list of web hooks for the authenticated subscription.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechWebHooksApi();

var apiVersion = "apiVersion_example"; // String | The requested api version.

var opts = { 
  'skip': 56, // Number | Number of datasets that will be skipped.
  'top': 56, // Number | Number of datasets that will be included after skipping.
  'filter': "filter_example" // String | A filtering expression for selecting a subset of the available hooks.              Supported properties: displayName, description, createdDateTime, lastActionDateTime, status and webUrl.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=displayName eq 'test'
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.webHooksList(apiVersion, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **String**| The requested api version. | 
 **skip** | **Number**| Number of datasets that will be skipped. | [optional] 
 **top** | **Number**| Number of datasets that will be included after skipping. | [optional] 
 **filter** | **String**| A filtering expression for selecting a subset of the available hooks.              Supported properties: displayName, description, createdDateTime, lastActionDateTime, status and webUrl.              - Operators:                - eq, ne are supported for all properties.                - gt, ge, lt, le are supported for createdDateTime and lastActionDateTime.                - and, or, not are supported.              - Example:                filter=displayName eq 'test' | [optional] 

### Return type

[**PaginatedWebHooks**](PaginatedWebHooks.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="webHooksPing"></a>
# **webHooksPing**
> webHooksPing(id, apiVersion, )

Sends a ping event to the registered URL.

The request body of the POST request sent to the registered web hook URL is of the same shape as in the GET request for a specific hook.  The Swagger Schema ID of the model is WebHookV3.                The request will contain a X-MicrosoftSpeechServices-Event header with the value ping. If the web hook was registered with  a secret it will contain a X-MicrosoftSpeechServices-Signature header with an SHA256 hash of the payload with  the secret as HMAC key. The hash is base64 encoded.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechWebHooksApi();

var id = "id_example"; // String | The identifier of the web hook to ping.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.webHooksPing(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the web hook to ping. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="webHooksTest"></a>
# **webHooksTest**
> webHooksTest(id, apiVersion, )

Sends a request for each registered event type to the registered URL.

The payload will be generated from the last entity that would have invoked the web hook. If no entity is present for none of the registered event types,  the POST will respond with 204. If a test request can be made, it will respond with 200.  The request will contain a X-MicrosoftSpeechServices-Event header with the respective registered event type.  If the web hook was registered with a secret it will contain a X-MicrosoftSpeechServices-Signature header with an SHA256 hash of the payload with  the secret as HMAC key. The hash is base64 encoded.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechWebHooksApi();

var id = "id_example"; // String | The identifier of the web hook to ping.

var apiVersion = "apiVersion_example"; // String | The requested api version.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.webHooksTest(id, apiVersion, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the web hook to ping. | 
 **apiVersion** | **String**| The requested api version. | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="webHooksUpdate"></a>
# **webHooksUpdate**
> WebHook webHooksUpdate(id, apiVersion, webHookUpdate)

Updates the web hook identified by the given ID.

If the property secret in the configuration is omitted or contains an empty string, future callbacks won't contain X-MicrosoftSpeechServices-Signature  headers. If the property contains a non-empty string, it will be used to create a SHA256 hash of the payload with the secret as HMAC key. This hash  will be set as X-MicrosoftSpeechServices-Signature header when calling back into the registered URL.                If the URL changes,  the web hook will stop receiving events until a  challenge/response is completed. To do this, a request with the event type challenge will be made with a query parameter called validationToken.  Respond to the challenge with a 200 OK containing the value of the validationToken query parameter as the response body. When the challenge/response  is successfully completed, the web hook will begin receiving events.

### Example
```javascript
var SpeechServicesApiVersion20241115 = require('speech_services_api_version_2024_11_15');
var defaultClient = SpeechServicesApiVersion20241115.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new SpeechServicesApiVersion20241115.CustomSpeechWebHooksApi();

var id = "id_example"; // String | The identifier of the web hook.

var apiVersion = "apiVersion_example"; // String | The requested api version.

var webHookUpdate = new SpeechServicesApiVersion20241115.WebHookUpdate(); // WebHookUpdate | The updated values for the web hook.


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.webHooksUpdate(id, apiVersion, webHookUpdate, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The identifier of the web hook. | 
 **apiVersion** | **String**| The requested api version. | 
 **webHookUpdate** | [**WebHookUpdate**](WebHookUpdate.md)| The updated values for the web hook. | 

### Return type

[**WebHook**](WebHook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: application/json

