# marketcheck_api_sdk_perl::CRMApi

## Load the API package
```perl
use marketcheck_api_sdk_perl::Object::CRMApi;
```

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**crm_check**](CRMApi.md#crm_check) | **GET** /crm_check/{vin} | CRM check of a particular vin


# **crm_check**
> CRMResponse crm_check(vin => $vin, sale_date => $sale_date, api_key => $api_key)

CRM check of a particular vin

Check whether particular vin has had a listing after stipulated date or not

### Example 
```perl
use Data::Dumper;
use marketcheck_api_sdk_perl::CRMApi;
my $api_instance = marketcheck_api_sdk_perl::CRMApi->new(
);

my $vin = 'vin_example'; # string | vin for which CRM check needs to be done
my $sale_date = 'sale_date_example'; # string | sale date after which listing has appeared or not
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->crm_check(vin => $vin, sale_date => $sale_date, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CRMApi->crm_check: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| vin for which CRM check needs to be done | 
 **sale_date** | **string**| sale date after which listing has appeared or not | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**CRMResponse**](CRMResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

