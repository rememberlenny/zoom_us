# ZoomUs::InlineResponse20029

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **Date** | Start date for this report in &#39;yyyy-mm-dd&#39; format. | [optional] 
**next_page_token** | **String** | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
**page_count** | **Integer** | The number of pages returned for the request made. | [optional] 
**page_size** | **Integer** | The number of records returned within a single API call. | [optional] 
**to** | **Date** | End date for this report in &#39;yyyy-mm-dd&#39; format. | [optional] 
**total_records** | **Integer** | The number of all records available across pages. | [optional] 
**webinars** | [**Array&lt;WebinarMetrics&gt;**](WebinarMetrics.md) | Array of webinar objects. | [optional] 


