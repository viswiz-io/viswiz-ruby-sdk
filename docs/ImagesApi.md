# ViswizSdk::ImagesApi

All URIs are relative to *https://api.viswiz.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_image**](ImagesApi.md#create_image) | **POST** /builds/{buildID}/images | Create an image
[**get_images**](ImagesApi.md#get_images) | **GET** /builds/{buildID}/images | Get images for a build


# **create_image**
> Image create_image(build_id, name, image)

Create an image

Upload a new image for a build. This endpoint accepts only one PNG image per request.  This request requires a `Content-Type: multipart/form-data` HTTP header. 

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

api_instance = ViswizSdk::ImagesApi.new

build_id = 'build_id_example' # String | The requested build ID

name = 'name_example' # String | The name of the image

image = File.new('/path/to/file.txt') # File | The contents of the image


begin
  #Create an image
  result = api_instance.create_image(build_id, name, image)
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling ImagesApi->create_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **build_id** | **String**| The requested build ID | 
 **name** | **String**| The name of the image | 
 **image** | **File**| The contents of the image | 

### Return type

[**Image**](Image.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **get_images**
> Images get_images(build_id)

Get images for a build

Get a list of all images for a build. 

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

api_instance = ViswizSdk::ImagesApi.new

build_id = 'build_id_example' # String | The requested build ID


begin
  #Get images for a build
  result = api_instance.get_images(build_id)
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling ImagesApi->get_images: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **build_id** | **String**| The requested build ID | 

### Return type

[**Images**](Images.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



