=begin
#Zoom API

#The Zoom API allows developers to safely and securely access information from Zoom. You can use this API to build private services or public applications on the [Zoom App Marketplace](http://marketplace.zoom.us). To learn how to get your credentials and create private/public applications, read our [Authorization Guide](https://marketplace.zoom.us/docs/guides/authorization/credentials). All endpoints are available via `https` and are located at `api.zoom.us/v2/`.  For instance you can list all users on an account via `https://api.zoom.us/v2/users/`.

OpenAPI spec version: 2.0.0
Contact: developersupport@zoom.us
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for ZoomUs::WebinarsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebinarsApi' do
  before do
    # run before each test
    @instance = ZoomUs::WebinarsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebinarsApi' do
    it 'should create an instance of WebinarsApi' do
      expect(@instance).to be_instance_of(ZoomUs::WebinarsApi)
    end
  end

  # unit tests for get_tracking_sources
  # Get Webinar Tracking Sources
  # [Webinar Registration Tracking Sources](https://support.zoom.us/hc/en-us/articles/360000315683-Webinar-Registration-Source-Tracking) allow you to see where your registrants are coming from if you share the webinar registration page in multiple platforms. You can then use the source tracking to see the number of registrants generated from each platform.&lt;br&gt; Use this API to list information on all the tracking sources of a Webinar.&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60;, &#x60;webinar:read&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites**:&lt;br&gt; * [Webinar license](https://zoom.us/webinar). * Registration must be required for the Webinar. 
  # @param webinar_id The webinar ID.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20074]
  describe 'get_tracking_sources test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_past_webinar_files
  # List Past Webinar Files
  # List files sent via in-meeting chat during a meeting. The in-meeting files are deleted after 24 hours of the meeting completion time.  &lt;br&gt;&lt;br&gt; **Scope:** &#x60;webinar:read&#x60;, &#x60;webinar:read:admin&#x60;&lt;br&gt;  &lt;br&gt;  
  # @param webinar_id 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20084]
  describe 'list_past_webinar_files test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_past_webinar_poll_results
  # List Past Webinar Poll Results
  # The polling feature for webinar allows you to create single choice or multiple choice polling questions for your webinars. Use this API to retrieve the results for Webinar Polls of a specific Webinar.  **Prerequisites:**&lt;br&gt; * [Webinar license](https://zoom.us/webinar)&lt;br&gt; **Scopes**: &#x60;webinar:read:admin&#x60;, &#x60;webinar:read&#x60;&lt;br&gt;  &lt;br&gt;    
  # @param webinar_id The Webinar ID or Webinar UUID. If the webinar ID is passed, it will take the last webinar instance.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20085]
  describe 'list_past_webinar_poll_results test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_past_webinar_qa
  # List Q&amp;A of Past Webinar
  # The [Question &amp; Answer (Q&amp;A)](https://support.zoom.us/hc/en-us/articles/203686015-Getting-Started-with-Question-Answer) feature for Webinars allows attendees to ask questions during the Webinar and for the panelists, co-hosts and host to answer their questions.&lt;br&gt; Use this API to list Q&amp;A of a specific Webinar.  **Prerequisites:**&lt;br&gt; * [Webinar license](https://zoom.us/webinar)&lt;br&gt; **Scopes**: &#x60;webinar:read:admin&#x60;, &#x60;webinar:read&#x60;&lt;br&gt;  &lt;br&gt;    
  # @param webinar_id The Webinar ID or Webinar UUID. If the webinar ID is passed, it will take the last webinar instance.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20086]
  describe 'list_past_webinar_qa test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for past_webinars
  # List Past Webinar Instances
  # List past webinar instances.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt;  &lt;br&gt;  
  # @param webinar_id The webinar ID.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'past_webinars test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar
  # Get a Webinar
  # Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees.&lt;br&gt;Use this API to get details of a scheduled webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt; &lt;br&gt;**Prerequisites:** * Pro or higher plan with a Webinar Add-on.
  # @param webinar_id The webinar ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :occurrence_id Unique Identifier that identifies an occurrence of a recurring webinar. [Recurring webinars](https://support.zoom.us/hc/en-us/articles/216354763-How-to-Schedule-A-Recurring-Webinar) can have a maximum of 50 occurrences. When you create a recurring Webinar using [Create a Webinar API](https://marketplace.zoom.us/docs/api-reference/zoom-api/webinars/webinarcreate), you can retrieve the Occurrence ID from the response of the API call.
  # @return [InlineResponse20054]
  describe 'webinar test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_absentees
  # Get Webinar Absentees
  # List absentees of a webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt;  
  # @param webinar_uuid The webinar UUID. Please double encode your UUID when using it for API calls if the UUID begins with a &#39;/&#39;or contains &#39;//&#39; in it.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :occurrence_id The meeting occurrence ID.
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [RegistrationList]
  describe 'webinar_absentees test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_create
  # Create a Webinar
  # Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees.&lt;br&gt;Use this API to schedule a Webinar for a user (host).&lt;br&gt;&lt;br&gt;  **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:** * Pro or higher plan with a Webinar Add-on.
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20118]
  describe 'webinar_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_delete
  # Delete a Webinar
  # Delete a Webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:**&lt;br&gt; * Pro or higher plan with a Webinar Add-on.
  # @param webinar_id The webinar ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :occurrence_id The meeting occurrence ID.
  # @return [nil]
  describe 'webinar_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_panelist_create
  # Add Panelists
  # Panelists in a Webinar can view and send video, screen share, annotate, etc and do much more compared to attendees in a webinar.&lt;br&gt;Use this API to [add panelists](https://support.zoom.us/hc/en-us/articles/115005657826-Inviting-Panelists-to-a-Webinar#h_7550d59e-23f5-4703-9e22-e76bded1ed70) to a scheduled webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt; &lt;br&gt;   **Prerequisites:** * Pro or a higher plan with [Webinar Add-on](https://zoom.us/webinar).&lt;br&gt; 
  # @param webinar_id The webinar ID.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'webinar_panelist_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_panelist_delete
  # Remove a Panelist
  # [Remove](https://support.zoom.us/hc/en-us/articles/115005657826-Inviting-Panelists-to-a-Webinar#h_de31f237-a91c-4fb2-912b-ecfba8ec5ffb) a single panelist from a webinar.&lt;br&gt; You can retrieve the &#x60;panelistId&#x60; by calling **List Panelists API**.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt;   **Prerequisites:**&lt;br&gt; * Pro or a higher plan with [Webinar Add-on](https://zoom.us/webinar).&lt;br&gt; 
  # @param webinar_id The webinar ID.
  # @param panelist_id The panelist ID or panelist email.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'webinar_panelist_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_panelists
  # List Panelists
  # Panelists in a Webinar can view and send video, screen share, annotate, etc and do much more compared to attendees in a Webinar.   Use this API to list all the panelists of a Webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:**&lt;br&gt; * Pro or a higher plan with [Webinar Add-on](https://zoom.us/webinar).&lt;br&gt; 
  # @param webinar_id The webinar ID.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20055]
  describe 'webinar_panelists test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_panelists_delete
  # Remove Panelists
  # Remove all the panelists from a Webinar.&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:**&lt;br&gt; * Pro or a higher plan with [Webinar Add-on](https://zoom.us/webinar).&lt;br&gt; 
  # @param webinar_id The webinar ID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'webinar_panelists_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_poll_create
  # Create a Webinar&#39;s Poll
  # Create a [poll](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars) for a webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt;  
  # @param webinar_id The webinar ID.
  # @param body Webinar poll object
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20121]
  describe 'webinar_poll_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_poll_delete
  # Delete a Webinar Poll
  # Delete a webinar&#39;s [poll](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars).&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt;  
  # @param webinar_id The webinar ID.
  # @param poll_id The poll ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'webinar_poll_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_poll_get
  # Get a Webinar Poll
  # Get a webinar&#39;s [poll](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars) details.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt;  &lt;br&gt;  
  # @param webinar_id The webinar ID.
  # @param poll_id The poll ID
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20121]
  describe 'webinar_poll_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_poll_update
  # Update a Webinar Poll
  # Update a webinar&#39;s [poll](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars).&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt;  
  # @param webinar_id The webinar ID.
  # @param poll_id The poll ID
  # @param body Webinar Poll
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'webinar_poll_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_polls
  # List a Webinar&#39;s Polls 
  # List all the [polls](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars) of a Webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt;  &lt;br&gt;  
  # @param webinar_id The webinar ID.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'webinar_polls test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_registrant_create
  # Add a Webinar Registrant
  # Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees. Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form before receiving the link to join the Webinar.&lt;br&gt;Use this API to create and submit the registration of a user for a webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:** * Pro or higher plan with a Webinar Add-on.
  # @param webinar_id The webinar ID.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :occurrence_ids Occurrence ID. Get this value from the webinar get API. Multiple values separated by a comma.
  # @return [InlineResponse20120]
  describe 'webinar_registrant_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_registrant_get
  # Get a Webinar Registrant
  # Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees. Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form before receiving the link to join the Webinar.&lt;br&gt;Use this API to get details on a specific user who has registered for the Webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:**&lt;br&gt; * The account must have a Webinar plan.
  # @param webinar_id The webinar ID.
  # @param registrant_id The registrant ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :occurrence_id The meeting occurrence ID.
  # @return [WebianrRegistrant]
  describe 'webinar_registrant_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_registrant_question_update
  # Update Registration Questions
  # Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form with fields and questions before they can receive the link to join the Webinar.&lt;br&gt;Use this API to update registration questions and fields of a scheduled Webinar that are to be answered by users while registering for a Webinar.&lt;br&gt;&lt;br&gt; **Prerequisites:**&lt;br&gt;   * Pro or higher plan with a Webinar Add-on. * Registration option for Webinar should be set as required to use this API.  **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;    
  # @param webinar_id The webinar ID.
  # @param body Webinar Registrant Questions
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'webinar_registrant_question_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_registrant_status
  # Update Webinar Registrant Status
  # Update a webinar registrant&#39;s status.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt;  
  # @param webinar_id The webinar ID.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :occurrence_id The meeting occurrence ID.
  # @return [nil]
  describe 'webinar_registrant_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_registrants
  # List Webinar Registrants
  # Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees. Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form before receiving the link to join the Webinar.&lt;br&gt; Use this API to list all the users that have registered for a webinar.&lt;br&gt;&lt;br&gt; **Prerequisites:** * Pro or higher plan with a Webinar Add-on.&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt; &lt;br&gt;  
  # @param webinar_id The webinar ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :occurrence_id The meeting occurrence ID.
  # @option opts [String] :status The registrant status:&lt;br&gt;&#x60;pending&#x60; - Registrant&#39;s status is pending.&lt;br&gt;&#x60;approved&#x60; - Registrant&#39;s status is approved.&lt;br&gt;&#x60;denied&#x60; - Registrant&#39;s status is denied.
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [Integer] :page_number The current page number of returned records.
  # @return [RegistrationList]
  describe 'webinar_registrants test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_registrants_questions_get
  # List Registration Questions
  # Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form with fields and questions before they can receive the link to join the Webinar.&lt;br&gt;Use this API to list registration questions and fields that are to be answered by users while registering for a Webinar.&lt;br&gt; **Prerequisites:**&lt;br&gt;   * Pro or higher plan with a Webinar Add-on. **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt;  &lt;br&gt;  
  # @param webinar_id The webinar ID.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20056]
  describe 'webinar_registrants_questions_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_status
  # Update Webinar Status
  # Update a webinar&#39;s status. Use this API to end an ongoing webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:**&lt;br&gt; * The account must hold a valid [Webinar plan](https://zoom.us/webinar).
  # @param webinar_id The webinar ID.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'webinar_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinar_update
  # Update a Webinar
  # Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees.&lt;br&gt; Use this API to make updates to a scheduled Webinar.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:write:admin&#x60; &#x60;webinar:write&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:**&lt;br&gt; * Pro or higher plan with a Webinar Add-on.
  # @param webinar_id The webinar ID.
  # @param body Webinar.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :occurrence_id Webinar occurrence id. Support change of agenda, start_time, duration, settings: {host_video, panelist_video, hd_video, watermark, auto_recording}
  # @return [nil]
  describe 'webinar_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webinars
  # List Webinars
  # Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees.&lt;br&gt; Use this API to list all the webinars that are scheduled by or on-behalf a user (Webinar host).&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;webinar:read:admin&#x60; &#x60;webinar:read&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:** * Pro or higher plan with a Webinar Add-on.
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [Integer] :page_number The current page number of returned records.
  # @return [UserList]
  describe 'webinars test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end