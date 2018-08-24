# ViswizSdk::BuildsApi

All URIs are relative to *https://api.viswiz.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_build**](BuildsApi.md#create_build) | **POST** /projects/{projectID}/builds | Create a build
[**finish_build**](BuildsApi.md#finish_build) | **POST** /builds/{buildID}/finish | Finish a build
[**get_build_results**](BuildsApi.md#get_build_results) | **GET** /builds/{buildID}/results | Get results for a build
[**get_builds**](BuildsApi.md#get_builds) | **GET** /projects/{projectID}/builds | Get builds for a project


# **create_build**
> Build create_build(project_id, body)

Create a build

Create a new build for a project. 

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

api_instance = ViswizSdk::BuildsApi.new

project_id = 'project_id_example' # String | The requested project ID

body = ViswizSdk::Body2.new # Body2 | 


begin
  #Create a build
  result = api_instance.create_build(project_id, body)
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling BuildsApi->create_build: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| The requested project ID | 
 **body** | [**Body2**](Body2.md)|  | 

### Return type

[**Build**](Build.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finish_build**
> finish_build(build_id)

Finish a build

Finish a build when all images have been created. This triggers the actual build comparison to execute. 

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

api_instance = ViswizSdk::BuildsApi.new

build_id = 'build_id_example' # String | The requested build ID


begin
  #Finish a build
  api_instance.finish_build(build_id)
rescue ViswizSdk::ApiError => e
  puts "Exception when calling BuildsApi->finish_build: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **build_id** | **String**| The requested build ID | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_build_results**
> BuildResults get_build_results(build_id)

Get results for a build

Get the results for a build which has been compared to another build. 

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

api_instance = ViswizSdk::BuildsApi.new

build_id = 'build_id_example' # String | The requested build ID


begin
  #Get results for a build
  result = api_instance.get_build_results(build_id)
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling BuildsApi->get_build_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **build_id** | **String**| The requested build ID | 

### Return type

[**BuildResults**](BuildResults.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_builds**
> Builds get_builds(project_id)

Get builds for a project

Get a list of all the builds for a project. 

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

api_instance = ViswizSdk::BuildsApi.new

project_id = 'project_id_example' # String | The requested project ID


begin
  #Get builds for a project
  result = api_instance.get_builds(project_id)
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling BuildsApi->get_builds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| The requested project ID | 

### Return type

[**Builds**](Builds.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



