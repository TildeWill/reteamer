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

# Unit tests for SwaggerClient::EventApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EventApi' do
  before do
    # run before each test
    @instance = SwaggerClient::EventApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventApi' do
    it 'should create an instance of EventApi' do
      expect(@instance).to be_instance_of(SwaggerClient::EventApi)
    end
  end

  # unit tests for find_events
  # Return past events, paginated, without payloads present
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :org_id Org identifier (either id or slug)
  # @option opts [String] :user_id User id
  # @option opts [String] :entity_id Entity id
  # @option opts [Integer] :from Timestamp to start search at
  # @option opts [Integer] :limit Number of results to return
  # @return [ResultsEvent]
  describe 'find_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_event
  # Return individual event, including payload
  # 
  # @param event_id 
  # @param [Hash] opts the optional parameters
  # @option opts [UserAuth] :body 
  # @return [Event]
  describe 'get_event test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replay_event
  # Resend all associated notifications for a previous event (superusers only)
  # 
  # @param event_id Event id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :app App name to restrict notifications to
  # @return [nil]
  describe 'replay_event test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for trigger_event
  # Trigger event with third party integration
  # 
  # @param org_id Org identifier (either id or slug)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :app App name to restrict notifications to
  # @option opts [String] :scenario_id Scenario id
  # @option opts [Object] :body data
  # @return [nil]
  describe 'trigger_event test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
