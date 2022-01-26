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
  class ContentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a content
    # 
    # @param org_id Org identifier (either id or slug)
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContent] :body Content data to create
    # @return [Content]
    def create_content(org_id, opts = {})
      data, _status_code, _headers = create_content_with_http_info(org_id, opts)
      data
    end

    # Create a content
    # 
    # @param org_id Org identifier (either id or slug)
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContent] :body Content data to create
    # @return [Array<(Content, Fixnum, Hash)>] Content data, response status code and response headers
    def create_content_with_http_info(org_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentApi.create_content ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling ContentApi.create_content"
      end
      # resource path
      local_var_path = '/v1/org/{orgId}/content'.sub('{' + 'orgId' + '}', org_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Content')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentApi#create_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a content
    # 
    # @param org_id Org identifier (either id or slug)
    # @param content_id Content id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_content(org_id, content_id, opts = {})
      delete_content_with_http_info(org_id, content_id, opts)
      nil
    end

    # Delete a content
    # 
    # @param org_id Org identifier (either id or slug)
    # @param content_id Content id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_content_with_http_info(org_id, content_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentApi.delete_content ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling ContentApi.delete_content"
      end
      # verify the required parameter 'content_id' is set
      if @api_client.config.client_side_validation && content_id.nil?
        fail ArgumentError, "Missing the required parameter 'content_id' when calling ContentApi.delete_content"
      end
      # resource path
      local_var_path = '/v1/org/{orgId}/content/{contentId}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'contentId' + '}', content_id.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentApi#delete_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return all content applicable to a particular job
    # 
    # @param org_id Org identifier (either id or slug)
    # @param job_id Job id
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :date Date
    # @return [ResultsContent]
    def find_content_for_job(org_id, job_id, opts = {})
      data, _status_code, _headers = find_content_for_job_with_http_info(org_id, job_id, opts)
      data
    end

    # Return all content applicable to a particular job
    # 
    # @param org_id Org identifier (either id or slug)
    # @param job_id Job id
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :date Date
    # @return [Array<(ResultsContent, Fixnum, Hash)>] ResultsContent data, response status code and response headers
    def find_content_for_job_with_http_info(org_id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentApi.find_content_for_job ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling ContentApi.find_content_for_job"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling ContentApi.find_content_for_job"
      end
      # resource path
      local_var_path = '/v1/org/{orgId}/content/job/{jobId}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'jobId' + '}', job_id.to_s)

      # query parameters
      query_params = {}
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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResultsContent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentApi#find_content_for_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return all content applicable to a particular person
    # 
    # @param org_id Org identifier (either id or slug)
    # @param person_id Person id
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :date Date
    # @return [ResultsContent]
    def find_content_for_person(org_id, person_id, opts = {})
      data, _status_code, _headers = find_content_for_person_with_http_info(org_id, person_id, opts)
      data
    end

    # Return all content applicable to a particular person
    # 
    # @param org_id Org identifier (either id or slug)
    # @param person_id Person id
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :date Date
    # @return [Array<(ResultsContent, Fixnum, Hash)>] ResultsContent data, response status code and response headers
    def find_content_for_person_with_http_info(org_id, person_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentApi.find_content_for_person ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling ContentApi.find_content_for_person"
      end
      # verify the required parameter 'person_id' is set
      if @api_client.config.client_side_validation && person_id.nil?
        fail ArgumentError, "Missing the required parameter 'person_id' when calling ContentApi.find_content_for_person"
      end
      # resource path
      local_var_path = '/v1/org/{orgId}/content/person/{personId}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'personId' + '}', person_id.to_s)

      # query parameters
      query_params = {}
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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResultsContent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentApi#find_content_for_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return all contents in the organization paginated
    # 
    # @param org_id Org identifier (either id or slug)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status to filter by
    # @option opts [String] :from Content id to start paginating from
    # @option opts [Integer] :limit Number of results to return
    # @return [ResultsContent]
    def find_contents(org_id, opts = {})
      data, _status_code, _headers = find_contents_with_http_info(org_id, opts)
      data
    end

    # Return all contents in the organization paginated
    # 
    # @param org_id Org identifier (either id or slug)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status to filter by
    # @option opts [String] :from Content id to start paginating from
    # @option opts [Integer] :limit Number of results to return
    # @return [Array<(ResultsContent, Fixnum, Hash)>] ResultsContent data, response status code and response headers
    def find_contents_with_http_info(org_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentApi.find_contents ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling ContentApi.find_contents"
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['ACTIVE', 'INACTIVE'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of ACTIVE, INACTIVE'
      end
      # resource path
      local_var_path = '/v1/org/{orgId}/content'.sub('{' + 'orgId' + '}', org_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
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
        :return_type => 'ResultsContent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentApi#find_contents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return a particular content by id
    # 
    # @param org_id Org identifier (either id or slug)
    # @param content_id Content id
    # @param [Hash] opts the optional parameters
    # @return [Content]
    def get_content(org_id, content_id, opts = {})
      data, _status_code, _headers = get_content_with_http_info(org_id, content_id, opts)
      data
    end

    # Return a particular content by id
    # 
    # @param org_id Org identifier (either id or slug)
    # @param content_id Content id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Content, Fixnum, Hash)>] Content data, response status code and response headers
    def get_content_with_http_info(org_id, content_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentApi.get_content ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling ContentApi.get_content"
      end
      # verify the required parameter 'content_id' is set
      if @api_client.config.client_side_validation && content_id.nil?
        fail ArgumentError, "Missing the required parameter 'content_id' when calling ContentApi.get_content"
      end
      # resource path
      local_var_path = '/v1/org/{orgId}/content/{contentId}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'contentId' + '}', content_id.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Content')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentApi#get_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update an existing content
    # 
    # @param org_id Org identifier (either id or slug)
    # @param content_id Content id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateContent] :body Content data to update
    # @return [nil]
    def update_content(org_id, content_id, opts = {})
      update_content_with_http_info(org_id, content_id, opts)
      nil
    end

    # Update an existing content
    # 
    # @param org_id Org identifier (either id or slug)
    # @param content_id Content id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateContent] :body Content data to update
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_content_with_http_info(org_id, content_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContentApi.update_content ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling ContentApi.update_content"
      end
      # verify the required parameter 'content_id' is set
      if @api_client.config.client_side_validation && content_id.nil?
        fail ArgumentError, "Missing the required parameter 'content_id' when calling ContentApi.update_content"
      end
      # resource path
      local_var_path = '/v1/org/{orgId}/content/{contentId}'.sub('{' + 'orgId' + '}', org_id.to_s).sub('{' + 'contentId' + '}', content_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentApi#update_content\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
