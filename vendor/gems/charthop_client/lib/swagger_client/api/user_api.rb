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
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Change a user's password, or switch a user to SSO
    # 
    # @param user_id User id
    # @param [Hash] opts the optional parameters
    # @option opts [ChangePasswordRequest] :body 
    # @return [nil]
    def change_password(user_id, opts = {})
      change_password_with_http_info(user_id, opts)
      nil
    end

    # Change a user&#39;s password, or switch a user to SSO
    # 
    # @param user_id User id
    # @param [Hash] opts the optional parameters
    # @option opts [ChangePasswordRequest] :body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def change_password_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.change_password ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.change_password"
      end
      # resource path
      local_var_path = '/v1/user/{userId}/password'.sub('{' + 'userId' + '}', user_id.to_s)

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
        @api_client.config.logger.debug "API called: UserApi#change_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new user
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUser] :body User data to create
    # @return [User]
    def create_user(opts = {})
      data, _status_code, _headers = create_user_with_http_info(opts)
      data
    end

    # Create a new user
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUser] :body User data to create
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def create_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.create_user ...'
      end
      # resource path
      local_var_path = '/v1/user'

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return all users within an org or across orgs
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :org_id Org id to search within
    # @option opts [String] :from User id to start from
    # @option opts [Integer] :limit Number of results to return
    # @option opts [String] :sort Sort by
    # @return [ResultsUser]
    def find_users(opts = {})
      data, _status_code, _headers = find_users_with_http_info(opts)
      data
    end

    # Return all users within an org or across orgs
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :org_id Org id to search within
    # @option opts [String] :from User id to start from
    # @option opts [Integer] :limit Number of results to return
    # @option opts [String] :sort Sort by
    # @return [Array<(ResultsUser, Fixnum, Hash)>] ResultsUser data, response status code and response headers
    def find_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.find_users ...'
      end
      # resource path
      local_var_path = '/v1/user'

      # query parameters
      query_params = {}
      query_params[:'orgId'] = opts[:'org_id'] if !opts[:'org_id'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

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
        :return_type => 'ResultsUser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#find_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the currently logged in user
    # 
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_me(opts = {})
      data, _status_code, _headers = get_me_with_http_info(opts)
      data
    end

    # Return the currently logged in user
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def get_me_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_me ...'
      end
      # resource path
      local_var_path = '/v1/user/me'

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_me\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the user the user is currently viewing as
    # 
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_me_view(opts = {})
      data, _status_code, _headers = get_me_view_with_http_info(opts)
      data
    end

    # Return the user the user is currently viewing as
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def get_me_view_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_me_view ...'
      end
      # resource path
      local_var_path = '/v1/user/me/view'

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_me_view\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return a particular user by id
    # 
    # @param user_id User id
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_user(user_id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(user_id, opts)
      data
    end

    # Return a particular user by id
    # 
    # @param user_id User id
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def get_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.get_user"
      end
      # resource path
      local_var_path = '/v1/user/{userId}'.sub('{' + 'userId' + '}', user_id.to_s)

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return a particular user by its corresponding person id
    # 
    # @param person_id Person id to fetch user for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :org_id Org id to search within
    # @return [User]
    def get_user_by_person_id(person_id, opts = {})
      data, _status_code, _headers = get_user_by_person_id_with_http_info(person_id, opts)
      data
    end

    # Return a particular user by its corresponding person id
    # 
    # @param person_id Person id to fetch user for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :org_id Org id to search within
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def get_user_by_person_id_with_http_info(person_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_user_by_person_id ...'
      end
      # verify the required parameter 'person_id' is set
      if @api_client.config.client_side_validation && person_id.nil?
        fail ArgumentError, "Missing the required parameter 'person_id' when calling UserApi.get_user_by_person_id"
      end
      # resource path
      local_var_path = '/v1/user/person/{personId}'.sub('{' + 'personId' + '}', person_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'orgId'] = opts[:'org_id'] if !opts[:'org_id'].nil?

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user_by_person_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Revoke a user's access token
    # 
    # @param user_id User id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def revoke_user_token(user_id, opts = {})
      revoke_user_token_with_http_info(user_id, opts)
      nil
    end

    # Revoke a user&#39;s access token
    # 
    # @param user_id User id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def revoke_user_token_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.revoke_user_token ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.revoke_user_token"
      end
      # resource path
      local_var_path = '/v1/user/{userId}/token'.sub('{' + 'userId' + '}', user_id.to_s)

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
        @api_client.config.logger.debug "API called: UserApi#revoke_user_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send a password reset email
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [EmailRequest] :body User email address
    # @return [nil]
    def send_reset_email(opts = {})
      send_reset_email_with_http_info(opts)
      nil
    end

    # Send a password reset email
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [EmailRequest] :body User email address
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_reset_email_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.send_reset_email ...'
      end
      # resource path
      local_var_path = '/v1/user/sendreset'

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
        @api_client.config.logger.debug "API called: UserApi#send_reset_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sign up for a new ChartHop account
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [SignupRequest] :body Signup information
    # @return [nil]
    def signup_user(opts = {})
      signup_user_with_http_info(opts)
      nil
    end

    # Sign up for a new ChartHop account
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [SignupRequest] :body Signup information
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def signup_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.signup_user ...'
      end
      # resource path
      local_var_path = '/v1/user/signup'

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
        @api_client.config.logger.debug "API called: UserApi#signup_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update an existing user
    # 
    # @param user_id User id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateUser] :body User data to update
    # @return [nil]
    def update_user(user_id, opts = {})
      update_user_with_http_info(user_id, opts)
      nil
    end

    # Update an existing user
    # 
    # @param user_id User id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateUser] :body User data to update
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.update_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.update_user"
      end
      # resource path
      local_var_path = '/v1/user/{userId}'.sub('{' + 'userId' + '}', user_id.to_s)

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
        @api_client.config.logger.debug "API called: UserApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
