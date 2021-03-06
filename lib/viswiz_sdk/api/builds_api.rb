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
  class BuildsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a build
    # Create a new build for a project. 
    # @param project_id The requested project ID
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Build]
    def create_build(project_id, body, opts = {})
      data, _status_code, _headers = create_build_with_http_info(project_id, body, opts)
      data
    end

    # Create a build
    # Create a new build for a project. 
    # @param project_id The requested project ID
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Build, Fixnum, Hash)>] Build data, response status code and response headers
    def create_build_with_http_info(project_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BuildsApi.create_build ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BuildsApi.create_build"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BuildsApi.create_build"
      end
      # resource path
      local_var_path = '/projects/{projectID}/builds'.sub('{' + 'projectID' + '}', project_id.to_s)

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
        :return_type => 'Build')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BuildsApi#create_build\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Finish a build
    # Finish a build when all images have been created. This triggers the actual build comparison to execute. 
    # @param build_id The requested build ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finish_build(build_id, opts = {})
      finish_build_with_http_info(build_id, opts)
      nil
    end

    # Finish a build
    # Finish a build when all images have been created. This triggers the actual build comparison to execute. 
    # @param build_id The requested build ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finish_build_with_http_info(build_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BuildsApi.finish_build ...'
      end
      # verify the required parameter 'build_id' is set
      if @api_client.config.client_side_validation && build_id.nil?
        fail ArgumentError, "Missing the required parameter 'build_id' when calling BuildsApi.finish_build"
      end
      # resource path
      local_var_path = '/builds/{buildID}/finish'.sub('{' + 'buildID' + '}', build_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BuildsApi#finish_build\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get results for a build
    # Get the results for a build which has been compared to another build. 
    # @param build_id The requested build ID
    # @param [Hash] opts the optional parameters
    # @return [BuildResults]
    def get_build_results(build_id, opts = {})
      data, _status_code, _headers = get_build_results_with_http_info(build_id, opts)
      data
    end

    # Get results for a build
    # Get the results for a build which has been compared to another build. 
    # @param build_id The requested build ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(BuildResults, Fixnum, Hash)>] BuildResults data, response status code and response headers
    def get_build_results_with_http_info(build_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BuildsApi.get_build_results ...'
      end
      # verify the required parameter 'build_id' is set
      if @api_client.config.client_side_validation && build_id.nil?
        fail ArgumentError, "Missing the required parameter 'build_id' when calling BuildsApi.get_build_results"
      end
      # resource path
      local_var_path = '/builds/{buildID}/results'.sub('{' + 'buildID' + '}', build_id.to_s)

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
        :return_type => 'BuildResults')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BuildsApi#get_build_results\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get builds for a project
    # Get a list of all the builds for a project. 
    # @param project_id The requested project ID
    # @param [Hash] opts the optional parameters
    # @return [Builds]
    def get_builds(project_id, opts = {})
      data, _status_code, _headers = get_builds_with_http_info(project_id, opts)
      data
    end

    # Get builds for a project
    # Get a list of all the builds for a project. 
    # @param project_id The requested project ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Builds, Fixnum, Hash)>] Builds data, response status code and response headers
    def get_builds_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BuildsApi.get_builds ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BuildsApi.get_builds"
      end
      # resource path
      local_var_path = '/projects/{projectID}/builds'.sub('{' + 'projectID' + '}', project_id.to_s)

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
        :return_type => 'Builds')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BuildsApi#get_builds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
