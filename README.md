# viswiz_sdk

ViswizSdk - the Ruby gem for the VisWiz.io API Documentation

This SDK allows you to query and create new projects, builds or images within the VisWiz service.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: `1.1.0`
- Package version: `1.0.0`
- Build package: `io.swagger.codegen.languages.RubyClientCodegen`

For more information, please visit [https://www.viswiz.io](https://www.viswiz.io)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build viswiz_sdk.gemspec
```

Then either install the gem locally:

```shell
gem install ./viswiz_sdk-1.0.0.gem
```
(for development, run `gem install --dev ./viswiz_sdk-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'viswiz_sdk', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/viswiz-io/viswiz-ruby-sdk, then add the following in the Gemfile:

    gem 'viswiz_sdk', :git => 'https://github.com/viswiz-io/viswiz-ruby-sdk.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
require 'viswiz_sdk'

# Setup authorization
ViswizSdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = ViswizSdk::ProjectsApi.new

begin
  result = api_instance.get_projects()
  p result
rescue ViswizSdk::ApiError => e
  puts "Exception when calling ProjectsApi->get_projects: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api.viswiz.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ViswizSdk::AccountApi* | [**create_webhook**](docs/AccountApi.md#create_webhook) | **POST** /webhooks | Create a new webhook
*ViswizSdk::AccountApi* | [**get_account**](docs/AccountApi.md#get_account) | **GET** /account | Get account info
*ViswizSdk::AccountApi* | [**get_webhooks**](docs/AccountApi.md#get_webhooks) | **GET** /webhooks | Get all webhooks
*ViswizSdk::BuildsApi* | [**create_build**](docs/BuildsApi.md#create_build) | **POST** /projects/{projectID}/builds | Create a build
*ViswizSdk::BuildsApi* | [**finish_build**](docs/BuildsApi.md#finish_build) | **POST** /builds/{buildID}/finish | Finish a build
*ViswizSdk::BuildsApi* | [**get_build_results**](docs/BuildsApi.md#get_build_results) | **GET** /builds/{buildID}/results | Get results for a build
*ViswizSdk::BuildsApi* | [**get_builds**](docs/BuildsApi.md#get_builds) | **GET** /projects/{projectID}/builds | Get builds for a project
*ViswizSdk::ImagesApi* | [**create_image**](docs/ImagesApi.md#create_image) | **POST** /builds/{buildID}/images | Create an image
*ViswizSdk::ImagesApi* | [**get_images**](docs/ImagesApi.md#get_images) | **GET** /builds/{buildID}/images | Get images for a build
*ViswizSdk::PlansApi* | [**cancel_plan**](docs/PlansApi.md#cancel_plan) | **DELETE** /account/cancel-plan | Cancel the active plan
*ViswizSdk::PlansApi* | [**get_plans**](docs/PlansApi.md#get_plans) | **GET** /plans | Get all plans
*ViswizSdk::ProjectsApi* | [**create_project**](docs/ProjectsApi.md#create_project) | **POST** /projects | Create a project
*ViswizSdk::ProjectsApi* | [**get_project_notifications**](docs/ProjectsApi.md#get_project_notifications) | **GET** /projects/{projectID}/notifications | Get notifications settings
*ViswizSdk::ProjectsApi* | [**get_projects**](docs/ProjectsApi.md#get_projects) | **GET** /projects | Get all projects
*ViswizSdk::ProjectsApi* | [**update_project_notifications**](docs/ProjectsApi.md#update_project_notifications) | **PUT** /projects/{projectID}/notifications | Update notifications settings


## Documentation for Models

 - [ViswizSdk::Account](docs/Account.md)
 - [ViswizSdk::AccountApiKeys](docs/AccountApiKeys.md)
 - [ViswizSdk::AccountPlan](docs/AccountPlan.md)
 - [ViswizSdk::Body](docs/Body.md)
 - [ViswizSdk::Body1](docs/Body1.md)
 - [ViswizSdk::Body2](docs/Body2.md)
 - [ViswizSdk::Build](docs/Build.md)
 - [ViswizSdk::BuildResults](docs/BuildResults.md)
 - [ViswizSdk::BuildResultsImages](docs/BuildResultsImages.md)
 - [ViswizSdk::Builds](docs/Builds.md)
 - [ViswizSdk::DiffImage](docs/DiffImage.md)
 - [ViswizSdk::Image](docs/Image.md)
 - [ViswizSdk::Images](docs/Images.md)
 - [ViswizSdk::InlineResponse200](docs/InlineResponse200.md)
 - [ViswizSdk::InlineResponse2001](docs/InlineResponse2001.md)
 - [ViswizSdk::InlineResponse2002](docs/InlineResponse2002.md)
 - [ViswizSdk::Notifications](docs/Notifications.md)
 - [ViswizSdk::Plan](docs/Plan.md)
 - [ViswizSdk::PlanPrice](docs/PlanPrice.md)
 - [ViswizSdk::Project](docs/Project.md)
 - [ViswizSdk::WebHook](docs/WebHook.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header