# ViswizSdk::ProjectsApi

All URIs are relative to *https://api.viswiz.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_project**](ProjectsApi.md#create_project) | **POST** /projects | Create a project
[**get_project_notifications**](ProjectsApi.md#get_project_notifications) | **GET** /projects/{projectID}/notifications | Get notifications settings
[**get_projects**](ProjectsApi.md#get_projects) | **GET** /projects | Get all projects
[**update_project_notifications**](ProjectsApi.md#update_project_notifications) | **PUT** /projects/{projectID}/notifications | Update notifications settings


# **create_project**
> Project create_project(body)

Create a project

Create a new project for the account. 

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

api_instance = ViswizSdk::ProjectsApi.new

body = ViswizSdk::Body1.new # Body1 | 


begin
  #Create a project
  result = api_instance.create_project(body)
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling ProjectsApi->create_project: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body1**](Body1.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_project_notifications**
> Notifications get_project_notifications(project_id)

Get notifications settings

Get the notifications settings for a project. 

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

api_instance = ViswizSdk::ProjectsApi.new

project_id = 'project_id_example' # String | The requested project ID


begin
  #Get notifications settings
  result = api_instance.get_project_notifications(project_id)
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling ProjectsApi->get_project_notifications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| The requested project ID | 

### Return type

[**Notifications**](Notifications.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_projects**
> InlineResponse2002 get_projects

Get all projects

Get a list of all the projects for the account. 

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

api_instance = ViswizSdk::ProjectsApi.new

begin
  #Get all projects
  result = api_instance.get_projects
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling ProjectsApi->get_projects: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_project_notifications**
> Notifications update_project_notifications(project_id, body)

Update notifications settings

Update the notifications settings for a project. All fields are optional. 

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

api_instance = ViswizSdk::ProjectsApi.new

project_id = 'project_id_example' # String | The requested project ID

body = ViswizSdk::Notifications.new # Notifications | 


begin
  #Update notifications settings
  result = api_instance.update_project_notifications(project_id, body)
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling ProjectsApi->update_project_notifications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| The requested project ID | 
 **body** | [**Notifications**](Notifications.md)|  | 

### Return type

[**Notifications**](Notifications.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



