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
  class StripeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return all billing plans directly from Stripe (staff only)
    # 
    # @param [Hash] opts the optional parameters
    # @return [ResultsPlan]
    def find_stripe_plans(opts = {})
      data, _status_code, _headers = find_stripe_plans_with_http_info(opts)
      data
    end

    # Return all billing plans directly from Stripe (staff only)
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResultsPlan, Fixnum, Hash)>] ResultsPlan data, response status code and response headers
    def find_stripe_plans_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StripeApi.find_stripe_plans ...'
      end
      # resource path
      local_var_path = '/v1/stripe/plan'

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
        :return_type => 'ResultsPlan')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StripeApi#find_stripe_plans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return all products directly from Stripe (staff only)
    # 
    # @param [Hash] opts the optional parameters
    # @return [ResultsStripeProduct]
    def find_stripe_products(opts = {})
      data, _status_code, _headers = find_stripe_products_with_http_info(opts)
      data
    end

    # Return all products directly from Stripe (staff only)
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResultsStripeProduct, Fixnum, Hash)>] ResultsStripeProduct data, response status code and response headers
    def find_stripe_products_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StripeApi.find_stripe_products ...'
      end
      # resource path
      local_var_path = '/v1/stripe/product'

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
        :return_type => 'ResultsStripeProduct')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StripeApi#find_stripe_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a Stripe setupIntent object and returns the secret for that object
    # 
    # @param [Hash] opts the optional parameters
    # @return [SetupIntent]
    def get_setup_intent(opts = {})
      data, _status_code, _headers = get_setup_intent_with_http_info(opts)
      data
    end

    # Creates a Stripe setupIntent object and returns the secret for that object
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetupIntent, Fixnum, Hash)>] SetupIntent data, response status code and response headers
    def get_setup_intent_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StripeApi.get_setup_intent ...'
      end
      # resource path
      local_var_path = '/v1/stripe/setup-intent'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SetupIntent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StripeApi#get_setup_intent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return a particular product by its Stripe id
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :product_id Stripe product id
    # @return [StripeProduct]
    def get_stripe_product(opts = {})
      data, _status_code, _headers = get_stripe_product_with_http_info(opts)
      data
    end

    # Return a particular product by its Stripe id
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :product_id Stripe product id
    # @return [Array<(StripeProduct, Fixnum, Hash)>] StripeProduct data, response status code and response headers
    def get_stripe_product_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StripeApi.get_stripe_product ...'
      end
      # resource path
      local_var_path = '/v1/stripe/product/{productId}'

      # query parameters
      query_params = {}
      query_params[:'productId'] = opts[:'product_id'] if !opts[:'product_id'].nil?

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
        :return_type => 'StripeProduct')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StripeApi#get_stripe_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Process webhook events from Stripe
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :stripe_signature 
    # @option opts [String] :body 
    # @return [nil]
    def process_stripe_webhook(opts = {})
      process_stripe_webhook_with_http_info(opts)
      nil
    end

    # Process webhook events from Stripe
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :stripe_signature 
    # @option opts [String] :body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def process_stripe_webhook_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StripeApi.process_stripe_webhook ...'
      end
      # resource path
      local_var_path = '/v1/stripe/webhook'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Stripe-Signature'] = opts[:'stripe_signature'] if !opts[:'stripe_signature'].nil?

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
        @api_client.config.logger.debug "API called: StripeApi#process_stripe_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
