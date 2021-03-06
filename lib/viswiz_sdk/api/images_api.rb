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
  class ImagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an image
    # Upload a new image for a build. This endpoint accepts only one PNG image per request.  This request requires a `Content-Type: multipart/form-data` HTTP header. 
    # @param build_id The requested build ID
    # @param name The name of the image
    # @param image The contents of the image
    # @param [Hash] opts the optional parameters
    # @return [Image]
    def create_image(build_id, name, image, opts = {})
      data, _status_code, _headers = create_image_with_http_info(build_id, name, image, opts)
      data
    end

    # Create an image
    # Upload a new image for a build. This endpoint accepts only one PNG image per request.  This request requires a &#x60;Content-Type: multipart/form-data&#x60; HTTP header. 
    # @param build_id The requested build ID
    # @param name The name of the image
    # @param image The contents of the image
    # @param [Hash] opts the optional parameters
    # @return [Array<(Image, Fixnum, Hash)>] Image data, response status code and response headers
    def create_image_with_http_info(build_id, name, image, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.create_image ...'
      end
      # verify the required parameter 'build_id' is set
      if @api_client.config.client_side_validation && build_id.nil?
        fail ArgumentError, "Missing the required parameter 'build_id' when calling ImagesApi.create_image"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ImagesApi.create_image"
      end
      # verify the required parameter 'image' is set
      if @api_client.config.client_side_validation && image.nil?
        fail ArgumentError, "Missing the required parameter 'image' when calling ImagesApi.create_image"
      end
      # resource path
      local_var_path = '/builds/{buildID}/images'.sub('{' + 'buildID' + '}', build_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['name'] = name
      form_params['image'] = image

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Image')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#create_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get images for a build
    # Get a list of all images for a build. 
    # @param build_id The requested build ID
    # @param [Hash] opts the optional parameters
    # @return [Images]
    def get_images(build_id, opts = {})
      data, _status_code, _headers = get_images_with_http_info(build_id, opts)
      data
    end

    # Get images for a build
    # Get a list of all images for a build. 
    # @param build_id The requested build ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Images, Fixnum, Hash)>] Images data, response status code and response headers
    def get_images_with_http_info(build_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.get_images ...'
      end
      # verify the required parameter 'build_id' is set
      if @api_client.config.client_side_validation && build_id.nil?
        fail ArgumentError, "Missing the required parameter 'build_id' when calling ImagesApi.get_images"
      end
      # resource path
      local_var_path = '/builds/{buildID}/images'.sub('{' + 'buildID' + '}', build_id.to_s)

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
        :return_type => 'Images')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#get_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
