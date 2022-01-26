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

# Unit tests for SwaggerClient::FormStatusUpdateRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FormStatusUpdateRequest' do
  before do
    # run before each test
    @instance = SwaggerClient::FormStatusUpdateRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FormStatusUpdateRequest' do
    it 'should create an instance of FormStatusUpdateRequest' do
      expect(@instance).to be_instance_of(SwaggerClient::FormStatusUpdateRequest)
    end
  end
  describe 'test attribute "update_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACTIVE", "INACTIVE", "TODO", "ARCHIVED"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.update_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "form_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
