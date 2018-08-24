# ViswizSdk::PlansApi

All URIs are relative to *https://api.viswiz.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_plan**](PlansApi.md#cancel_plan) | **DELETE** /account/cancel-plan | Cancel the active plan
[**get_plans**](PlansApi.md#get_plans) | **GET** /plans | Get all plans


# **cancel_plan**
> cancel_plan

Cancel the active plan

Cancels the active subscription plan for the account. 

### Example
```ruby
# load the gem
require 'viswiz_sdk'

api_instance = ViswizSdk::PlansApi.new

begin
  #Cancel the active plan
  api_instance.cancel_plan
rescue ViswizSdk::ApiError => e
  puts "Exception when calling PlansApi->cancel_plan: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_plans**
> InlineResponse200 get_plans

Get all plans

Get a list of all the subscription plans available. 

### Example
```ruby
# load the gem
require 'viswiz_sdk'

api_instance = ViswizSdk::PlansApi.new

begin
  #Get all plans
  result = api_instance.get_plans
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling PlansApi->get_plans: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



