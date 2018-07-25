# marketcheck_api_sdk_perl::MarketApi

## Load the API package
```perl
use marketcheck_api_sdk_perl::Object::MarketApi;
```

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_averages**](MarketApi.md#get_averages) | **GET** /averages | [MOCK] Get Averages for YMM
[**get_comparison**](MarketApi.md#get_comparison) | **GET** /comparison | Compare market
[**get_competition**](MarketApi.md#get_competition) | **GET** /competition | Competitors
[**get_depreciation**](MarketApi.md#get_depreciation) | **GET** /depreciation | Depreciation
[**get_mds**](MarketApi.md#get_mds) | **GET** /mds | Market Days Supply
[**get_popularity**](MarketApi.md#get_popularity) | **GET** /popularity | Popularity
[**get_sales_count**](MarketApi.md#get_sales_count) | **GET** /sales | Get sales count by make, model, year, trim or taxonomy vin
[**get_trends**](MarketApi.md#get_trends) | **GET** /trends | Get Trends for criteria


# **get_averages**
> Averages get_averages(vin => $vin, api_key => $api_key, year => $year, make => $make, model => $model, trim => $trim, fields => $fields)

[MOCK] Get Averages for YMM

[Merged with the /search API - Please check the 'stats' parameter to the Search API above] Get market averages for price / miles / msrp / dom (days on market) fields for active cars matching the given reference VIN's basic specification or Year, Make, Model, Trim (Optional) criteria

### Example 
```perl
use Data::Dumper;
use marketcheck_api_sdk_perl::MarketApi;
my $api_instance = marketcheck_api_sdk_perl::MarketApi->new(
);

my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which averages data is to be returned
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $year = 'year_example'; # string | Year of the car
my $make = 'make_example'; # string | Make of the car
my $model = 'model_example'; # string | Model of the Car
my $trim = 'trim_example'; # string | Trim of the Car
my $fields = 'fields_example'; # string | Comma separated list of fields to generate stats for. Allowed fields in the list are - price, miles, msrp, dom (days on market)

eval { 
    my $result = $api_instance->get_averages(vin => $vin, api_key => $api_key, year => $year, make => $make, model => $model, trim => $trim, fields => $fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MarketApi->get_averages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN as a reference to the type of car for which averages data is to be returned | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **year** | **string**| Year of the car | [optional] 
 **make** | **string**| Make of the car | [optional] 
 **model** | **string**| Model of the Car | [optional] 
 **trim** | **string**| Trim of the Car | [optional] 
 **fields** | **string**| Comma separated list of fields to generate stats for. Allowed fields in the list are - price, miles, msrp, dom (days on market) | [optional] 

### Return type

[**Averages**](Averages.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comparison**
> ComparisonPoint get_comparison(vin => $vin, api_key => $api_key)

Compare market

[MOCK] Get historical market trends for cars matching the given VIN's basic specification or Year, Make, Model, Trim (Optional) criteria

### Example 
```perl
use Data::Dumper;
use marketcheck_api_sdk_perl::MarketApi;
my $api_instance = marketcheck_api_sdk_perl::MarketApi->new(
);

my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which comparison data is to be returned
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_comparison(vin => $vin, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MarketApi->get_comparison: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN as a reference to the type of car for which comparison data is to be returned | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**ComparisonPoint**](ComparisonPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_competition**
> CompetitorsPoint get_competition(vin => $vin, api_key => $api_key)

Competitors

[MOCK] Competitor cars in market for current vin

### Example 
```perl
use Data::Dumper;
use marketcheck_api_sdk_perl::MarketApi;
my $api_instance = marketcheck_api_sdk_perl::MarketApi->new(
);

my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which competitors data is to be returned
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_competition(vin => $vin, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MarketApi->get_competition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN as a reference to the type of car for which competitors data is to be returned | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**CompetitorsPoint**](CompetitorsPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_depreciation**
> DepreciationPoint get_depreciation(vin => $vin, api_key => $api_key)

Depreciation

[MOCK] Model resale value based on depreciation

### Example 
```perl
use Data::Dumper;
use marketcheck_api_sdk_perl::MarketApi;
my $api_instance = marketcheck_api_sdk_perl::MarketApi->new(
);

my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which Depreciation stats is to be returned
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_depreciation(vin => $vin, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MarketApi->get_depreciation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN as a reference to the type of car for which Depreciation stats is to be returned | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**DepreciationPoint**](DepreciationPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_mds**
> Mds get_mds(vin => $vin, api_key => $api_key, exact => $exact, latitude => $latitude, longitude => $longitude, radius => $radius, debug => $debug, include_sold => $include_sold)

Market Days Supply

Get the basic information on specifications for a car identified by a valid VIN

### Example 
```perl
use Data::Dumper;
use marketcheck_api_sdk_perl::MarketApi;
my $api_instance = marketcheck_api_sdk_perl::MarketApi->new(
);

my $vin = 'vin_example'; # string | VIN to decode
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $exact = 1; # boolean | Exact parameter
my $latitude = 1.2; # double | Latitude component of location
my $longitude = 1.2; # double | Longitude component of location
my $radius = 56; # int | Radius around the search location
my $debug = 56; # int | Debug parameter
my $include_sold = 1; # boolean | To fetch sold vins

eval { 
    my $result = $api_instance->get_mds(vin => $vin, api_key => $api_key, exact => $exact, latitude => $latitude, longitude => $longitude, radius => $radius, debug => $debug, include_sold => $include_sold);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MarketApi->get_mds: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN to decode | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **exact** | **boolean**| Exact parameter | [optional] [default to false]
 **latitude** | **double**| Latitude component of location | [optional] 
 **longitude** | **double**| Longitude component of location | [optional] 
 **radius** | **int**| Radius around the search location | [optional] 
 **debug** | **int**| Debug parameter | [optional] [default to 0]
 **include_sold** | **boolean**| To fetch sold vins | [optional] [default to false]

### Return type

[**Mds**](Mds.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_popularity**
> ARRAY[PopularityItem] get_popularity(year => $year, make => $make, model => $model, trim => $trim, body_type => $body_type, api_key => $api_key, stats => $stats)

Popularity

[MOCK] [Merged with the /search API - Please check the 'popularity' parameter to the Search API above] Get the Popularity for the given simple filter criteria (by given Year, Make, Model, Trim criteria)

### Example 
```perl
use Data::Dumper;
use marketcheck_api_sdk_perl::MarketApi;
my $api_instance = marketcheck_api_sdk_perl::MarketApi->new(
);

my $year = 'year_example'; # string | Year of the car
my $make = 'make_example'; # string | Make of the car
my $model = 'model_example'; # string | Model of the Car
my $trim = 'trim_example'; # string | Trim of the Car
my $body_type = 'body_type_example'; # string | Body type to filter the cars on. Valid values are the ones returned by body_type facets API call
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $stats = 'stats_example'; # string | The list of fields for which stats need to be generated based on the matching listings for the search criteria. Allowed fields are - price, miles, msrp, dom The stats consists of mean, max, average and count of listings based on which the stats are calculated for the field. Stats could be requested in addition to the listings for the search. Please note - The API calls with the stats fields may take longer to respond.

eval { 
    my $result = $api_instance->get_popularity(year => $year, make => $make, model => $model, trim => $trim, body_type => $body_type, api_key => $api_key, stats => $stats);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MarketApi->get_popularity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **string**| Year of the car | 
 **make** | **string**| Make of the car | 
 **model** | **string**| Model of the Car | 
 **trim** | **string**| Trim of the Car | 
 **body_type** | **string**| Body type to filter the cars on. Valid values are the ones returned by body_type facets API call | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **stats** | **string**| The list of fields for which stats need to be generated based on the matching listings for the search criteria. Allowed fields are - price, miles, msrp, dom The stats consists of mean, max, average and count of listings based on which the stats are calculated for the field. Stats could be requested in addition to the listings for the search. Please note - The API calls with the stats fields may take longer to respond. | [optional] 

### Return type

[**ARRAY[PopularityItem]**](PopularityItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_sales_count**
> Sales get_sales_count(api_key => $api_key, car_type => $car_type, make => $make, mm => $mm, ymm => $ymm, ymmt => $ymmt, taxonomy_vin => $taxonomy_vin, state => $state, city_state => $city_state, stats => $stats)

Get sales count by make, model, year, trim or taxonomy vin

Get a sales count for city, state or national level by make, model, year, trim or taxonomy vin

### Example 
```perl
use Data::Dumper;
use marketcheck_api_sdk_perl::MarketApi;
my $api_instance = marketcheck_api_sdk_perl::MarketApi->new(
);

my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $car_type = 'car_type_example'; # string | Inventory type for which sales count is to be searched, default is used
my $make = 'make_example'; # string | Make for which sales count is to be searched
my $mm = 'mm_example'; # string | Make-Model for which sales count is to be searched, pipe seperated like mm=ford|f-150
my $ymm = 'ymm_example'; # string | Year-Make-Model for which sales count is to be searched, pipe seperated like ymm=2015|ford|f-150
my $ymmt = 'ymmt_example'; # string | Year-Make-Model-Trim for which sales count is to be searched, pipe seperated like ymmt=2015|ford|f-150|platinum
my $taxonomy_vin = 'taxonomy_vin_example'; # string | taxonomy_vin for which sales count is to be searched
my $state = 'state_example'; # string | State level sales count
my $city_state = 'city_state_example'; # string | City level sales count, pipe seperated like city_state=jacksonville|FL
my $stats = 'stats_example'; # string | Comma separated list of fields to generate stats for. Allowed fields in the list are - price, miles, dom (days on market) OR all

eval { 
    my $result = $api_instance->get_sales_count(api_key => $api_key, car_type => $car_type, make => $make, mm => $mm, ymm => $ymm, ymmt => $ymmt, taxonomy_vin => $taxonomy_vin, state => $state, city_state => $city_state, stats => $stats);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MarketApi->get_sales_count: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **car_type** | **string**| Inventory type for which sales count is to be searched, default is used | [optional] [default to used]
 **make** | **string**| Make for which sales count is to be searched | [optional] 
 **mm** | **string**| Make-Model for which sales count is to be searched, pipe seperated like mm&#x3D;ford|f-150 | [optional] 
 **ymm** | **string**| Year-Make-Model for which sales count is to be searched, pipe seperated like ymm&#x3D;2015|ford|f-150 | [optional] 
 **ymmt** | **string**| Year-Make-Model-Trim for which sales count is to be searched, pipe seperated like ymmt&#x3D;2015|ford|f-150|platinum | [optional] 
 **taxonomy_vin** | **string**| taxonomy_vin for which sales count is to be searched | [optional] 
 **state** | **string**| State level sales count | [optional] 
 **city_state** | **string**| City level sales count, pipe seperated like city_state&#x3D;jacksonville|FL | [optional] 
 **stats** | **string**| Comma separated list of fields to generate stats for. Allowed fields in the list are - price, miles, dom (days on market) OR all | [optional] 

### Return type

[**Sales**](Sales.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_trends**
> ARRAY[TrendPoint] get_trends(vin => $vin, car_type => $car_type, api_key => $api_key, year => $year, make => $make, model => $model, trim => $trim)

Get Trends for criteria

Get historical market trends for cars matching the given VIN's basic specification or Year, Make, Model, Trim (Optional) criteria

### Example 
```perl
use Data::Dumper;
use marketcheck_api_sdk_perl::MarketApi;
my $api_instance = marketcheck_api_sdk_perl::MarketApi->new(
);

my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which trend data is to be returned
my $car_type = 'car_type_example'; # string | Car type. Allowed values are - new / used / certified
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $year = 'year_example'; # string | Year of the car
my $make = 'make_example'; # string | Make of the car
my $model = 'model_example'; # string | Model of the Car
my $trim = 'trim_example'; # string | Trim of the Car

eval { 
    my $result = $api_instance->get_trends(vin => $vin, car_type => $car_type, api_key => $api_key, year => $year, make => $make, model => $model, trim => $trim);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MarketApi->get_trends: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN as a reference to the type of car for which trend data is to be returned | 
 **car_type** | **string**| Car type. Allowed values are - new / used / certified | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **year** | **string**| Year of the car | [optional] 
 **make** | **string**| Make of the car | [optional] 
 **model** | **string**| Model of the Car | [optional] 
 **trim** | **string**| Trim of the Car | [optional] 

### Return type

[**ARRAY[TrendPoint]**](TrendPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

