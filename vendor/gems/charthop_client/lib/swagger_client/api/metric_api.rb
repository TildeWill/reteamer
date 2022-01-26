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
  class MetricApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Record a daily metric
    # 
    # @param org_id Org identifier (either id or slug)
    # @param [Hash] opts the optional parameters
    # @option opts [RecordMetricRequest] :body 
    # @return [nil]
    def record_metric(org_id, opts = {})
      record_metric_with_http_info(org_id, opts)
      nil
    end

    # Record a daily metric
    # 
    # @param org_id Org identifier (either id or slug)
    # @param [Hash] opts the optional parameters
    # @option opts [RecordMetricRequest] :body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def record_metric_with_http_info(org_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricApi.record_metric ...'
      end
      # verify the required parameter 'org_id' is set
      if @api_client.config.client_side_validation && org_id.nil?
        fail ArgumentError, "Missing the required parameter 'org_id' when calling MetricApi.record_metric"
      end
      # resource path
      local_var_path = '/v1/org/{orgId}/metric'.sub('{' + 'orgId' + '}', org_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricApi#record_metric\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
