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

# Unit tests for SwaggerClient::CreateProduct
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateProduct' do
  before do
    # run before each test
    @instance = SwaggerClient::CreateProduct.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateProduct' do
    it 'should create an instance of CreateProduct' do
      expect(@instance).to be_instance_of(SwaggerClient::CreateProduct)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sku"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "salesforce_product_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "stripe_product_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "features"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["SCENARIO", "PERFORMANCE_REVIEW", "COMPENSATION_REVIEW", "REPORT", "CUSTOM_FIELD", "CUSTOM_FORM", "CUSTOM_PROFILE_TAB", "TEMPLATE", "TABLE", "ATS_SYNC", "MULTI_PAYROLL"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.features = value }.not_to raise_error
      # end
    end
  end

end
