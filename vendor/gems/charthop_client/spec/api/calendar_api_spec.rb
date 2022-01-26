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

# Unit tests for SwaggerClient::CalendarApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CalendarApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CalendarApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CalendarApi' do
    it 'should create an instance of CalendarApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CalendarApi)
    end
  end

  # unit tests for find_calendar_entries
  # Return calendar entries in a given time period
  # 
  # @param org_id Org identifier (either id or slug)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start Start date
  # @option opts [String] :_end End date
  # @option opts [String] :type Type of calendar entries to retrieve (timeoff, anniversary, birthday)
  # @option opts [String] :q Query filter to filter for part of the organization
  # @option opts [String] :format Format to return data in
  # @return [nil]
  describe 'find_calendar_entries test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
