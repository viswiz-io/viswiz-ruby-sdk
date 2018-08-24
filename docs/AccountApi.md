# ViswizSdk::AccountApi

All URIs are relative to *https://api.viswiz.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](AccountApi.md#create_webhook) | **POST** /webhooks | Create a new webhook
[**get_account**](AccountApi.md#get_account) | **GET** /account | Get account info
[**get_webhooks**](AccountApi.md#get_webhooks) | **GET** /webhooks | Get all webhooks


# **create_webhook**
> WebHook create_webhook(body)

Create a new webhook

When a build comparison is finished a POST HTTP request will be triggered towards all webhooks configured for the account.  The following query parameters are sent with each request:  - `branch` - `buildID` - `comparisonBranch` - `comparisonBuildID` - `diffImagesCount` - `diffPercentage` - `imagesCount` - `projectID` 

### Example
```ruby
# load the gem
require 'viswiz_sdk'
# setup authorization
ViswizSdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = ViswizSdk::AccountApi.new

body = ViswizSdk::Body.new # Body | 


begin
  #Create a new webhook
  result = api_instance.create_webhook(body)
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling AccountApi->create_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)|  | 

### Return type

[**WebHook**](WebHook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account**
> Account get_account

Get account info

Get the current account information 

### Example
```ruby
# load the gem
require 'viswiz_sdk'
# setup authorization
ViswizSdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = ViswizSdk::AccountApi.new

begin
  #Get account info
  result = api_instance.get_account
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling AccountApi->get_account: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_webhooks**
> InlineResponse2001 get_webhooks

Get all webhooks

Get the list of webhooks configured for the account. 

### Example
```ruby
# load the gem
require 'viswiz_sdk'
# setup authorization
ViswizSdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = ViswizSdk::AccountApi.new

begin
  #Get all webhooks
  result = api_instance.get_webhooks
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling AccountApi->get_webhooks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



