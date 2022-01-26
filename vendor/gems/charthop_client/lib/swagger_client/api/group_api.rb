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
  class GroupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a group
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to create the group in
    # @option opts [Date] :date Effective date of group creation
    # @option opts [Object] :body 
    # @return [nil]
    def create_group(org_id, type, opts = {})
      create_group_with_http_info(org_id, type, opts)
      nil
    end

    # Create a group
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to create the group in
    # @option opts [Date] :date Effective date of group creation
    # @option opts [Object] :body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_group_with_http_info(org_id, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.create_group ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling GroupApi.create_group"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling GroupApi.create_group"
      end
      # resource path
      local_var_path = '/v2/org/{orgId}/group/{type}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'type' + '}', type.to_s)

      # query parameters
      query_params = {}
      query_params[:'scenarioId'] = opts[:'scenario_id'] if !opts[:'scenario_id'].nil?
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?

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
        @api_client.config.logger.debug "API called: GroupApi#create_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a group
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param group_id Group id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to update the group in
    # @option opts [Date] :date Effective date of group update
    # @return [nil]
    def delete_group(org_id, type, group_id, opts = {})
      delete_group_with_http_info(org_id, type, group_id, opts)
      nil
    end

    # Delete a group
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param group_id Group id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to update the group in
    # @option opts [Date] :date Effective date of group update
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_group_with_http_info(org_id, type, group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.delete_group ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling GroupApi.delete_group"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling GroupApi.delete_group"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.delete_group"
      end
      # resource path
      local_var_path = '/v2/org/{orgId}/group/{type}/{groupId}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'type' + '}', type.to_s).sub('{' + 'groupId' + '}', group_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'scenarioId'] = opts[:'scenario_id'] if !opts[:'scenario_id'].nil?
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#delete_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find groups in the organization of a certain type
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to query
    # @option opts [Date] :date Date to search as of
    # @option opts [String] :from Group id to start paginating from
    # @option opts [Integer] :limit Number of results to return
    # @option opts [String] :fields Fields to retrieve, comma-separated
    # @option opts [BOOLEAN] :include_all Include all groups, including deleted groups
    # @option opts [String] :format Data format to use; default is json, can also use json-extended or json-readable
    # @return [ResultsData]
    def find_groups(org_id, type, opts = {})
      data, _status_code, _headers = find_groups_with_http_info(org_id, type, opts)
      data
    end

    # Find groups in the organization of a certain type
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to query
    # @option opts [Date] :date Date to search as of
    # @option opts [String] :from Group id to start paginating from
    # @option opts [Integer] :limit Number of results to return
    # @option opts [String] :fields Fields to retrieve, comma-separated
    # @option opts [BOOLEAN] :include_all Include all groups, including deleted groups
    # @option opts [String] :format Data format to use; default is json, can also use json-extended or json-readable
    # @return [Array<(ResultsData, Fixnum, Hash)>] ResultsData data, response status code and response headers
    def find_groups_with_http_info(org_id, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.find_groups ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling GroupApi.find_groups"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling GroupApi.find_groups"
      end
      # resource path
      local_var_path = '/v2/org/{orgId}/group/{type}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'type' + '}', type.to_s)

      # query parameters
      query_params = {}
      query_params[:'scenarioId'] = opts[:'scenario_id'] if !opts[:'scenario_id'].nil?
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'includeAll'] = opts[:'include_all'] if !opts[:'include_all'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?

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
        :return_type => 'ResultsData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#find_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return a particular group by id
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param group_id Group id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to query
    # @option opts [Date] :date Date
    # @option opts [String] :fields Fields to retrieve, comma-separated
    # @option opts [String] :format Data format to use; default is json, can also use json-extended or json-readable
    # @return [Hash<String, Object>]
    def get_group(org_id, type, group_id, opts = {})
      data, _status_code, _headers = get_group_with_http_info(org_id, type, group_id, opts)
      data
    end

    # Return a particular group by id
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param group_id Group id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to query
    # @option opts [Date] :date Date
    # @option opts [String] :fields Fields to retrieve, comma-separated
    # @option opts [String] :format Data format to use; default is json, can also use json-extended or json-readable
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_group_with_http_info(org_id, type, group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.get_group ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling GroupApi.get_group"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling GroupApi.get_group"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.get_group"
      end
      # resource path
      local_var_path = '/v2/org/{orgId}/group/{type}/{groupId}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'type' + '}', type.to_s).sub('{' + 'groupId' + '}', group_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'scenarioId'] = opts[:'scenario_id'] if !opts[:'scenario_id'].nil?
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?

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
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#get_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Import data from CSV file
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @option opts [Date] :date Date to update as of
    # @return [Process]
    def import_csv1(org_id, type, opts = {})
      data, _status_code, _headers = import_csv1_with_http_info(org_id, type, opts)
      data
    end

    # Import data from CSV file
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @option opts [Date] :date Date to update as of
    # @return [Array<(Process, Fixnum, Hash)>] Process data, response status code and response headers
    def import_csv1_with_http_info(org_id, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.import_csv1 ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling GroupApi.import_csv1"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling GroupApi.import_csv1"
      end
      # resource path
      local_var_path = '/v2/org/{orgId}/group/{type}/import'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'type' + '}', type.to_s)

      # query parameters
      query_params = {}
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Process')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#import_csv1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a group
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param group_id Group id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to update the group in
    # @option opts [Date] :date Effective date of group update
    # @option opts [Object] :body 
    # @return [nil]
    def update_group(org_id, type, group_id, opts = {})
      update_group_with_http_info(org_id, type, group_id, opts)
      nil
    end

    # Update a group
    # 
    # @param org_id Org identifier (either id or slug)
    # @param type Group type
    # @param group_id Group id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scenario_id Scenario id to update the group in
    # @option opts [Date] :date Effective date of group update
    # @option opts [Object] :body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_group_with_http_info(org_id, type, group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.update_group ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling GroupApi.update_group"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling GroupApi.update_group"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupApi.update_group"
      end
      # resource path
      local_var_path = '/v2/org/{orgId}/group/{type}/{groupId}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'type' + '}', type.to_s).sub('{' + 'groupId' + '}', group_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'scenarioId'] = opts[:'scenario_id'] if !opts[:'scenario_id'].nil?
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#update_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
