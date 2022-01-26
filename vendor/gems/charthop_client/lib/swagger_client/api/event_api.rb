=begin
#ChartHop API

#REST API for ChartHop

OpenAPI spec version: V1.0.0
Contact: support@charthop.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.25

=end

require 'uri'

module SwaggerClient
  class EventApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return past events, paginated, without payloads present
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :org_id Org identifier (either id or slug)
    # @option opts [String] :user_id User id
    # @option opts [String] :entity_id Entity id
    # @option opts [Integer] :from Timestamp to start search at
    # @option opts [Integer] :limit Number of results to return
    # @return [ResultsEvent]
    def find_events(opts = {})
      data, _status_code, _headers = find_events_with_http_info(opts)
      data
    end

    # Return past events, paginated, without payloads present
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :org_id Org identifier (either id or slug)
    # @option opts [String] :user_id User id
    # @option opts [String] :entity_id Entity id
    # @option opts [Integer] :from Timestamp to start search at
    # @option opts [Integer] :limit Number of results to return
    # @return [Array<(ResultsEvent, Fixnum, Hash)>] ResultsEvent data, response status code and response headers
    def find_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventApi.find_events ...'
      end
      # resource path
      local_var_path = '/v1/event'

      # query parameters
      query_params = {}
      query_params[:'orgId'] = opts[:'org_id'] if !opts[:'org_id'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResultsEvent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventApi#find_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return individual event, including payload
    # 
    # @param event_id 
    # @param [Hash] opts the optional parameters
    # @option opts [UserAuth] :body 
    # @return [Event]
    def get_event(event_id, opts = {})
      data, _status_code, _headers = get_event_with_http_info(event_id, opts)
      data
    end

    # Return individual event, including payload
    # 
    # @param event_id 
    # @param [Hash] opts the optional parameters
    # @option opts [UserAuth] :body 
    # @return [Array<(Event, Fixnum, Hash)>] Event data, response status code and response headers
    def get_event_with_http_info(event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventApi.get_event ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling EventApi.get_event"
      end
      # resource path
      local_var_path = '/v1/event/{eventId}'.sub('{' + 'eventId' + '}', event_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Event')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventApi#get_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Resend all associated notifications for a previous event (superusers only)
    # 
    # @param event_id Event id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app App name to restrict notifications to
    # @return [nil]
    def replay_event(event_id, opts = {})
      replay_event_with_http_info(event_id, opts)
      nil
    end

    # Resend all associated notifications for a previous event (superusers only)
    # 
    # @param event_id Event id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app App name to restrict notifications to
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def replay_event_with_http_info(event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventApi.replay_event ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling EventApi.replay_event"
      end
      # resource path
      local_var_path = '/v1/event/{eventId}/notify'.sub('{' + 'eventId' + '}', event_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'app'] = opts[:'app'] if !opts[:'app'].nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventApi#replay_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trigger event with third party integration
    # 
    # @param org_id Org identifier (either id or slug)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app App name to restrict notifications to
    # @option opts [String] :scenario_id Scenario id
    # @option opts [Object] :body data
    # @return [nil]
    def trigger_event(org_id, opts = {})
      trigger_event_with_http_info(org_id, opts)
      nil
    end

    # Trigger event with third party integration
    # 
    # @param org_id Org identifier (either id or slug)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app App name to restrict notifications to
    # @option opts [String] :scenario_id Scenario id
    # @option opts [Object] :body data
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def trigger_event_with_http_info(org_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventApi.trigger_event ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling EventApi.trigger_event"
      end
      # resource path
      local_var_path = '/v1/event/org/{orgId}/notify/{appName}'.sub('{' + 'orgId' + '}', org_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'app'] = opts[:'app'] if !opts[:'app'].nil?
      query_params[:'scenarioId'] = opts[:'scenario_id'] if !opts[:'scenario_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventApi#trigger_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
