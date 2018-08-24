=begin
#VisWiz.io API Documentation

#This SDK allows you to query and create new projects, builds or images within the VisWiz service. 

OpenAPI spec version: 1.1.0
Contact: support@viswiz.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module ViswizSdk
  class AccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new webhook
    # When a build comparison is finished a POST HTTP request will be triggered towards all webhooks configured for the account.  The following query parameters are sent with each request:  - `branch` - `buildID` - `comparisonBranch` - `comparisonBuildID` - `diffImagesCount` - `diffPercentage` - `imagesCount` - `projectID` 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [WebHook]
    def create_webhook(body, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(body, opts)
      data
    end

    # Create a new webhook
    # When a build comparison is finished a POST HTTP request will be triggered towards all webhooks configured for the account.  The following query parameters are sent with each request:  - &#x60;branch&#x60; - &#x60;buildID&#x60; - &#x60;comparisonBranch&#x60; - &#x60;comparisonBuildID&#x60; - &#x60;diffImagesCount&#x60; - &#x60;diffPercentage&#x60; - &#x60;imagesCount&#x60; - &#x60;projectID&#x60; 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebHook, Fixnum, Hash)>] WebHook data, response status code and response headers
    def create_webhook_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.create_webhook ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AccountApi.create_webhook"
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebHook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get account info
    # Get the current account information 
    # @param [Hash] opts the optional parameters
    # @return [Account]
    def get_account(opts = {})
      data, _status_code, _headers = get_account_with_http_info(opts)
      data
    end

    # Get account info
    # Get the current account information 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Account, Fixnum, Hash)>] Account data, response status code and response headers
    def get_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.get_account ...'
      end
      # resource path
      local_var_path = '/account'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Account')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all webhooks
    # Get the list of webhooks configured for the account. 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      data
    end

    # Get all webhooks
    # Get the list of webhooks configured for the account. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Fixnum, Hash)>] InlineResponse2001 data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.get_webhooks ...'
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2001')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
