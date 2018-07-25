# marketcheck_api_sdk_perl::Object::BaseListing

## Load the model package
```perl
use marketcheck_api_sdk_perl::Object::BaseListing;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Unique identifier representing a specific listing from the Marketcheck database | [optional] 
**vin** | **string** | VIN for the car | [optional] 
**heading** | **string** | Listing title as displayed on the source website | [optional] 
**price** | **int** | Asking price for the car | [optional] 
**miles** | **int** | Odometer reading / reported miles usage for the car | [optional] 
**msrp** | **int** | MSRP for the car | [optional] 
**data_source** | **string** | Data source of the listing | [optional] 
**is_certified** | **int** | Certified car | [optional] 
**vdp_url** | **string** | Vehicle Details Page url of the specific car | [optional] 
**carfax_1_owner** | **boolean** | Flag to indicate whether listing is carfax_1_owner | [optional] 
**carfax_clean_title** | **boolean** | Flag to indicate whether listing is carfax_clean_title | [optional] 
**exterior_color** | **string** | Exterior color of the car | [optional] 
**interior_color** | **string** | Interior color of the car | [optional] 
**dom** | **int** | Days on Market value for the car based on current and historical listings found in the Marketcheck database for this car | [optional] 
**dom_180** | **int** | Days on Market value for the car based on current and last 6 month listings found in the Marketcheck database for this car | [optional] 
**dom_active** | **int** | Days on Market value for the car based on current and last 30 days listings found in the Marketcheck database for this car | [optional] 
**seller_type** | **string** | Seller type for the car | [optional] 
**inventory_type** | **string** | Inventory type of car | [optional] 
**stock_no** | **string** | Stock number of car in dealers inventory | [optional] 
**last_seen_at** | **int** | Listing last seen at (most recent) timestamp | [optional] 
**last_seen_at_date** | **string** | Listing last seen at (most recent) date | [optional] 
**scraped_at** | [**Number**](Number.md) | Listing last seen at date timestamp | [optional] 
**scraped_at_date** | **string** | Listing last seen at date | [optional] 
**first_seen_at** | **int** | Listing first seen at first scraped timestamp | [optional] 
**first_seen_at_date** | **string** | Listing first seen at first scraped date | [optional] 
**ref_price** | **string** | Last reported price for the car. If the asking price value is not or is available then the last_price could perhaps be used. last_price is the price for the car listed on the source website as of last_price_dt date | [optional] 
**ref_price_dt** | **int** | The date at which the last price was reported online. This is earlier to last_seen_date | [optional] 
**ref_miles** | **string** | Last Odometer reading / reported miles usage for the car. If the asking miles value is not or is available then the last_miles could perhaps be used. last_miles is the miles for the car listed on the source website as of last_miles_dt date | [optional] 
**ref_miles_dt** | **int** | The date at which the last miles was reported online. This is earlier to last_seen_date | [optional] 
**source** | **string** | Source domain of the listing | [optional] 
**financing_options** | [**ARRAY[ListingFinance]**](ListingFinance.md) | Array of all finance offers for this listing | [optional] 
**leasing_options** | [**ARRAY[ListingLease]**](ListingLease.md) | Array of all finance offers for this listing | [optional] 
**media** | [**ListingNestMedia**](ListingNestMedia.md) | Car Media Attributes - main photo link/url and photo links | [optional] 
**dealer** | [**NestDealer**](NestDealer.md) | Dealer details of listing | [optional] 
**build** | [**Build**](Build.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


