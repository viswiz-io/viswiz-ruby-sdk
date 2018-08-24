=begin
#VisWiz.io API Documentation

#This SDK allows you to query and create new projects, builds or images within the VisWiz service. 

OpenAPI spec version: 1.1.0
Contact: support@viswiz.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ViswizSdk::BuildsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BuildsApi' do
  before do
    # run before each test
    @instance = ViswizSdk::BuildsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BuildsApi' do
    it 'should create an instance of BuildsApi' do
      expect(@instance).to be_instance_of(ViswizSdk::BuildsApi)
    end
  end

  # unit tests for create_build
  # Create a build
  # Create a new build for a project. 
  # @param project_id The requested project ID
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Build]
  describe 'create_build test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finish_build
  # Finish a build
  # Finish a build when all images have been created. This triggers the actual build comparison to execute. 
  # @param build_id The requested build ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'finish_build test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_build_results
  # Get results for a build
  # Get the results for a build which has been compared to another build. 
  # @param build_id The requested build ID
  # @param [Hash] opts the optional parameters
  # @return [BuildResults]
  describe 'get_build_results test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_builds
  # Get builds for a project
  # Get a list of all the builds for a project. 
  # @param project_id The requested project ID
  # @param [Hash] opts the optional parameters
  # @return [Builds]
  describe 'get_builds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end