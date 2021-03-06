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
  class CommonAreaPhones
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a Common Area Phone
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to [add a common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones#h_2d0da347-c35a-4993-9771-e21aaa568deb).<br><br> **Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br> **Scope:** `phone:write:admin`<br>
    # @param [Hash] opts the optional parameters
    # @option opts [Body74] :body
    # @return [InlineResponse20124]
    def add_common_area_phone(opts = {})
      data, _status_code, _headers = add_common_area_phone_with_http_info(opts)
      data
    end

    # Add a Common Area Phone
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don&#39;t belong to a specific employees, you could add a common area phone so that any person can use it.&lt;br&gt; Use this API to [add a common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones#h_2d0da347-c35a-4993-9771-e21aaa568deb).&lt;br&gt;&lt;br&gt; **Prerequisites:**&lt;br&gt; * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)&lt;br&gt; **Scope:** &#x60;phone:write:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Body74] :body
    # @return [Array<(InlineResponse20124, Fixnum, Hash)>] InlineResponse20124 data, response status code and response headers
    def add_common_area_phone_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommonAreaPhonesApi.add_common_area_phone ...'
      end
      # resource path
      local_var_path = '/phone/common_area_phones'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'InlineResponse20124')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommonAreaPhonesApi#add_common_area_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Common Area Phone
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to remove the [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) from Zoom Phone System in an account.<br><br>**Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br> **Scopes:** `phone:write:admin`<br>
    # @param common_area_phone_id Unique Identifier of the common area phone.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_common_area_phone(common_area_phone_id, opts = {})
      data, _status_code, _headers = delete_common_area_phone_with_http_info(common_area_phone_id, opts)
      data
    end

    # Delete a Common Area Phone
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don&#39;t belong to a specific employees, you could add a common area phone so that any person can use it.&lt;br&gt; Use this API to remove the [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) from Zoom Phone System in an account.&lt;br&gt;&lt;br&gt;**Prerequisites:**&lt;br&gt; * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)&lt;br&gt; **Scopes:** &#x60;phone:write:admin&#x60;&lt;br&gt;
    # @param common_area_phone_id Unique Identifier of the common area phone.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def delete_common_area_phone_with_http_info(common_area_phone_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommonAreaPhonesApi.delete_common_area_phone ...'
      end
      # verify the required parameter 'common_area_phone_id' is set
      if @api_client.config.client_side_validation && common_area_phone_id.nil?
        fail ArgumentError, "Missing the required parameter 'common_area_phone_id' when calling CommonAreaPhonesApi.delete_common_area_phone"
      end
      # resource path
      local_var_path = '/phone/common_area_phone/{commonAreaPhoneId}'.sub('{' + 'commonAreaPhoneId' + '}', common_area_phone_id.to_s)

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
        @api_client.config.logger.debug "API called: CommonAreaPhonesApi#delete_common_area_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Common Area Phone Details
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to get details on a specific [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) in an account.<br><br>**Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br> **Scopes:** `phone:read:admin`<br>
    # @param common_area_phone_id Unique Identifier of the Common Area Phone. This can be retrieved from List Common Area Phones API.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20096]
    def get_a_common_area_phone(common_area_phone_id, opts = {})
      data, _status_code, _headers = get_a_common_area_phone_with_http_info(common_area_phone_id, opts)
      data
    end

    # Get Common Area Phone Details
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don&#39;t belong to a specific employees, you could add a common area phone so that any person can use it.&lt;br&gt; Use this API to get details on a specific [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) in an account.&lt;br&gt;&lt;br&gt;**Prerequisites:**&lt;br&gt; * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)&lt;br&gt; **Scopes:** &#x60;phone:read:admin&#x60;&lt;br&gt;
    # @param common_area_phone_id Unique Identifier of the Common Area Phone. This can be retrieved from List Common Area Phones API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20096, Fixnum, Hash)>] InlineResponse20096 data, response status code and response headers
    def get_a_common_area_phone_with_http_info(common_area_phone_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommonAreaPhonesApi.get_a_common_area_phone ...'
      end
      # verify the required parameter 'common_area_phone_id' is set
      if @api_client.config.client_side_validation && common_area_phone_id.nil?
        fail ArgumentError, "Missing the required parameter 'common_area_phone_id' when calling CommonAreaPhonesApi.get_a_common_area_phone"
      end
      # resource path
      local_var_path = '/phone/common_area_phone/{commonAreaPhoneId}'.sub('{' + 'commonAreaPhoneId' + '}', common_area_phone_id.to_s)

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
        :return_type => 'InlineResponse20096')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommonAreaPhonesApi#get_a_common_area_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Common Area Phones
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to [list all common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) in an account.<br><br>**Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br><br> **Scope:** `phone:read:admin`<br>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The total number of records returned from a single API call. (default to 30)
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @return [InlineResponse20095]
    def list_common_area_phones(opts = {})
      data, _status_code, _headers = list_common_area_phones_with_http_info(opts)
      data
    end

    # List Common Area Phones
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don&#39;t belong to a specific employees, you could add a common area phone so that any person can use it.&lt;br&gt; Use this API to [list all common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) in an account.&lt;br&gt;&lt;br&gt;**Prerequisites:**&lt;br&gt; * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)&lt;br&gt;&lt;br&gt; **Scope:** &#x60;phone:read:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The total number of records returned from a single API call.
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @return [Array<(InlineResponse20095, Fixnum, Hash)>] InlineResponse20095 data, response status code and response headers
    def list_common_area_phones_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommonAreaPhonesApi.list_common_area_phones ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling CommonAreaPhonesApi.list_common_area_phones, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/phone/common_area_phones'

      # query parameters
      query_params = {}
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page_token'] = opts[:'next_page_token'] if !opts[:'next_page_token'].nil?

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
        :return_type => 'InlineResponse20095')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommonAreaPhonesApi#list_common_area_phones\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Common Area Phone
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to update details on a specific [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) in an account.<br><br>**Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br> **Scopes:** `phone:write:admin`<br>
    # @param common_area_phone_id
    # @param [Hash] opts the optional parameters
    # @option opts [Body75] :body
    # @return [Object]
    def update_common_area_phone(common_area_phone_id, opts = {})
      data, _status_code, _headers = update_common_area_phone_with_http_info(common_area_phone_id, opts)
      data
    end

    # Update Common Area Phone
    # A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don&#39;t belong to a specific employees, you could add a common area phone so that any person can use it.&lt;br&gt; Use this API to update details on a specific [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) in an account.&lt;br&gt;&lt;br&gt;**Prerequisites:**&lt;br&gt; * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)&lt;br&gt; **Scopes:** &#x60;phone:write:admin&#x60;&lt;br&gt;
    # @param common_area_phone_id
    # @param [Hash] opts the optional parameters
    # @option opts [Body75] :body
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_common_area_phone_with_http_info(common_area_phone_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommonAreaPhonesApi.update_common_area_phone ...'
      end
      # verify the required parameter 'common_area_phone_id' is set
      if @api_client.config.client_side_validation && common_area_phone_id.nil?
        fail ArgumentError, "Missing the required parameter 'common_area_phone_id' when calling CommonAreaPhonesApi.update_common_area_phone"
      end
      # resource path
      local_var_path = '/phone/common_area_phone/{commonAreaPhoneId}'.sub('{' + 'commonAreaPhoneId' + '}', common_area_phone_id.to_s)

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
        @api_client.config.logger.debug "API called: CommonAreaPhonesApi#update_common_area_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
