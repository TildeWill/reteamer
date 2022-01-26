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

# Unit tests for SwaggerClient::SamlApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SamlApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SamlApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SamlApi' do
    it 'should create an instance of SamlApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SamlApi)
    end
  end

  # unit tests for get_xml_certificate
  # Save per org Xml Cert from IDP
  # 
  # @param org_id Org identifier (either id or slug)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idp Identifier Provider
  # @return [nil]
  describe 'get_xml_certificate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for redirect_to_idp
  # Return an redirect to the designated Idp, given an identity provider
  # 
  # @param org Org slug
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idp Identifier Provider
  # @return [nil]
  describe 'redirect_to_idp test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sso
  # Single sign on URL, where SAML assertion is perform
  # 
  # @param org Org slug
  # @param [Hash] opts the optional parameters
  # @option opts [String] :saml_response SAML Response
  # @option opts [String] :relay_state Relay State
  # @return [nil]
  describe 'sso test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_xml_certificate
  # Save per org Xml Cert from IDP
  # 
  # @param org_id Org identifier (either id or slug)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idp Identifier Provider
  # @option opts [File] :file 
  # @return [nil]
  describe 'upload_xml_certificate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
