=begin
#ChartHop API

#REST API for ChartHop

OpenAPI spec version: V1.0.0
Contact: support@charthop.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.25

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::WebRegisteredCredential
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebRegisteredCredential' do
  before do
    # run before each test
    @instance = SwaggerClient::WebRegisteredCredential.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebRegisteredCredential' do
    it 'should create an instance of WebRegisteredCredential' do
      expect(@instance).to be_instance_of(SwaggerClient::WebRegisteredCredential)
    end
  end
  describe 'test attribute "credential_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "public_key_base64"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "user_handle_base64"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "signature_count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
