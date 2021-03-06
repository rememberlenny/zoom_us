=begin
#Zoom API

#The Zoom API allows developers to safely and securely access information from Zoom. You can use this API to build private services or public applications on the [Zoom App Marketplace](http://marketplace.zoom.us). To learn how to get your credentials and create private/public applications, read our [Authorization Guide](https://marketplace.zoom.us/docs/guides/authorization/credentials). All endpoints are available via `https` and are located at `api.zoom.us/v2/`.  For instance you can list all users on an account via `https://api.zoom.us/v2/users/`.

OpenAPI spec version: 2.0.0
Contact: developersupport@zoom.us
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module ZoomUs
  class PhoneBlockedList
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Blocked List
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.<br>Use this API to create a blocked list and add a number to that blocked list.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:write:admin`<br>
    # @param [Hash] opts the optional parameters
    # @option opts [Body76] :body
    # @return [InlineResponse20125]
    def add_anumber_to_blocked_list(opts = {})
      data, _status_code, _headers = add_anumber_to_blocked_list_with_http_info(opts)
      data
    end

    # Create a Blocked List
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won&#39;t be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.&lt;br&gt;Use this API to create a blocked list and add a number to that blocked list.&lt;br&gt; **Prerequisites:** * Pro or higher account plan with Zoom phone license&lt;br&gt; **Scope:** &#x60;phone:write:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Body76] :body
    # @return [Array<(InlineResponse20125, Fixnum, Hash)>] InlineResponse20125 data, response status code and response headers
    def add_anumber_to_blocked_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneBlockedListApi.add_anumber_to_blocked_list ...'
      end
      # resource path
      local_var_path = '/phone/blocked_list'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20125')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneBlockedListApi#add_anumber_to_blocked_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Blocked List
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). <br>Use this API to delete a blocked list and therefore removing the associated number from the blocked list. The number will be unblocked after the deletion.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:write:admin`<br>
    # @param blocked_list_id Unique Identifier of the blocked list. This can be retrieved from the List Blocked List API.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_a_blocked_list(blocked_list_id, opts = {})
      data, _status_code, _headers = delete_a_blocked_list_with_http_info(blocked_list_id, opts)
      data
    end

    # Delete a Blocked List
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won&#39;t be able to dial those numbers). &lt;br&gt;Use this API to delete a blocked list and therefore removing the associated number from the blocked list. The number will be unblocked after the deletion.&lt;br&gt; **Prerequisites:** * Pro or higher account plan with Zoom phone license&lt;br&gt; **Scope:** &#x60;phone:write:admin&#x60;&lt;br&gt;
    # @param blocked_list_id Unique Identifier of the blocked list. This can be retrieved from the List Blocked List API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def delete_a_blocked_list_with_http_info(blocked_list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneBlockedListApi.delete_a_blocked_list ...'
      end
      # verify the required parameter 'blocked_list_id' is set
      if @api_client.config.client_side_validation && blocked_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'blocked_list_id' when calling PhoneBlockedListApi.delete_a_blocked_list"
      end
      # resource path
      local_var_path = '/phone/blocked_list/{blockedListId}'.sub('{' + 'blockedListId' + '}', blocked_list_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneBlockedListApi#delete_a_blocked_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Blocked List Details
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.<br>Use this API to get information about a specific blocked list.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:read:admin`<br>
    # @param blocked_list_id Unique Identifier of the blocked list.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20098]
    def get_a_blocked_list(blocked_list_id, opts = {})
      data, _status_code, _headers = get_a_blocked_list_with_http_info(blocked_list_id, opts)
      data
    end

    # Get Blocked List Details
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won&#39;t be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.&lt;br&gt;Use this API to get information about a specific blocked list.&lt;br&gt; **Prerequisites:** * Pro or higher account plan with Zoom phone license&lt;br&gt; **Scope:** &#x60;phone:read:admin&#x60;&lt;br&gt;
    # @param blocked_list_id Unique Identifier of the blocked list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20098, Fixnum, Hash)>] InlineResponse20098 data, response status code and response headers
    def get_a_blocked_list_with_http_info(blocked_list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneBlockedListApi.get_a_blocked_list ...'
      end
      # verify the required parameter 'blocked_list_id' is set
      if @api_client.config.client_side_validation && blocked_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'blocked_list_id' when calling PhoneBlockedListApi.get_a_blocked_list"
      end
      # resource path
      local_var_path = '/phone/blocked_list/{blockedListId}'.sub('{' + 'blockedListId' + '}', blocked_list_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20098')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneBlockedListApi#get_a_blocked_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Blocked Lists
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.<br>Use this API to list all the blocked lists in an acccount.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:read:admin`<br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @option opts [Integer] :page_size The total number of records returned from a single API call. (default to 30)
    # @return [InlineResponse20097]
    def list_blocked_list(opts = {})
      data, _status_code, _headers = list_blocked_list_with_http_info(opts)
      data
    end

    # List Blocked Lists
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won&#39;t be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.&lt;br&gt;Use this API to list all the blocked lists in an acccount.&lt;br&gt; **Prerequisites:** * Pro or higher account plan with Zoom phone license&lt;br&gt; **Scope:** &#x60;phone:read:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @option opts [Integer] :page_size The total number of records returned from a single API call.
    # @return [Array<(InlineResponse20097, Fixnum, Hash)>] InlineResponse20097 data, response status code and response headers
    def list_blocked_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneBlockedListApi.list_blocked_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PhoneBlockedListApi.list_blocked_list, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/phone/blocked_list'

      # query parameters
      query_params = {}
      query_params[:'next_page_token'] = opts[:'next_page_token'] if !opts[:'next_page_token'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20097')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneBlockedListApi#list_blocked_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Blocked List
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.<br>Use this API to update information on the blocked list.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:write:admin`<br>
    # @param blocked_list_id Unique Identifier for the blocked list.
    # @param [Hash] opts the optional parameters
    # @option opts [Body77] :body
    # @return [Object]
    def update_blocked_list(blocked_list_id, opts = {})
      data, _status_code, _headers = update_blocked_list_with_http_info(blocked_list_id, opts)
      data
    end

    # Update a Blocked List
    # A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won&#39;t be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.&lt;br&gt;Use this API to update information on the blocked list.&lt;br&gt; **Prerequisites:** * Pro or higher account plan with Zoom phone license&lt;br&gt; **Scope:** &#x60;phone:write:admin&#x60;&lt;br&gt;
    # @param blocked_list_id Unique Identifier for the blocked list.
    # @param [Hash] opts the optional parameters
    # @option opts [Body77] :body
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_blocked_list_with_http_info(blocked_list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneBlockedListApi.update_blocked_list ...'
      end
      # verify the required parameter 'blocked_list_id' is set
      if @api_client.config.client_side_validation && blocked_list_id.nil?
        fail ArgumentError, "Missing the required parameter 'blocked_list_id' when calling PhoneBlockedListApi.update_blocked_list"
      end
      # resource path
      local_var_path = '/phone/blocked_list/{blockedListId}'.sub('{' + 'blockedListId' + '}', blocked_list_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneBlockedListApi#update_blocked_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
