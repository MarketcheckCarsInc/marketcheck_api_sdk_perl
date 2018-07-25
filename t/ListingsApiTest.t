=begin comment

Marketcheck Cars API

<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use strict;
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
#use strict;
use warnings;

use_ok('WWW::SwaggerClient::ListingsApi');

my $api = WWW::SwaggerClient::ListingsApi->new();
isa_ok($api, 'WWW::SwaggerClient::ListingsApi');

#
# get_listing test
#
# my @listing_id = ("19UUA9F28CA011954-2d62fe25-25ff-42c5-8079-9f640625a6f6", "1GKEL19WXYB500696-7eaa0a64-cec3-4c08-b4bd-31ee6700d7e0",
#     "5YFBU4EE1DP149067-7bc99ee4-949b-4991-af41-e8cac7eaf2c6", "KNDJE723287463668-def03577-369f-4192-b8db-5a8b89ecacdc",
#     "WDDGF8BB0BR146218-ac7ee737-fcff-49bb-8844-9e75dadf3877");
my @listing_id = ("19UUA9F28CA011954-2d62fe25-25ff-42c5-8079-9f640625a6f6");
my @year = ("2017", "2018", "2014", "2016", "2015");
my @make = ("Ford", "Chevrolet", "Toyota", "Nissan", "Honda");
my @model = ("F-150", "Civic", "Escape", "Equinox", "Malibu");
my @trim = ("Base", "Limited", "Sport", "Platinum", "Touring");
my @exterior_color = ("Black", "White", "Silver", "Red", "Blue");
my @interior_color = ("Black", "Gray", "Graphite", "Cloth", "Ash");
my @body_type = ("Sedan", "Pickup", "Hatchback", "Coupe", "Wagon");
my @body_subtype = ("Crew Cab", "Extended Cab", "Regular Cab", "Super Cab");
my @vehicle_type = ("SUV", "Van", "Car", "Truck");
my @seller_type = ("dealer", "fsbo");
my @drivetrain = ("Front Wheel Drive", "4-Wheel Drive", "All Wheel Drive", "Rear Wheel Drive", "4x2");
my @cylinders = (4,6,8,5,3);
my @transmission = ("Automatic", "Manual", "Automated Manual", "Direct Drive", "Manual/Standard");
my @doors = (4,2,5,3,6);
my @engine_block =("v", "i", "h");
my @latitude =("35.94", "37.34", "35.41", "33.54", "43.06");
my @longitude =("-117.29", "-75.65", "-86.8", "-80.64", "-84.16");
my @vin =("1FTEW1EFXFFB17341", "1FTEW1CP0FKD64953", "1FTEW1CG5FKE15329", "1FTEW1EF4FKD18109", "1FTFW1EG3FFB34334");
my @taxonomy_vins = ("1FTEW1EFFF", "1FTEW1CPFK", "1FTEW1CGFK", "1FTEW1EFFK", "1FTFW1EGFF");
        my @miles_range = ("3000", "5000", "8000", "10000"),
        my @price_range = ("3000", "4000", "5000", "60000"),
    my @dom_range = ("20", "30", "40", "50");
my @sort_by = ("price", "miles", "dom", "year");
my @stats_fields = ("price", "miles", "dom");
my @sort_order = ("asc", "desc");
my @rows = ("5", "10", "20", "30", "50");
my @facets = ("year", "make", "model", "trim", "car_type");
my @dealer_id = ("1007324", "1000466", "1016299", "1016499", "1015942");
my @car_type = ("new", "used");
my @zip =("90007", "75209", "02110", "84102");
my @country = ("CA", "US");
my @lease_term = (36, 39, 48);
my @lease_emp = ("200", "300", "400");
my @lease_down_payment = (1000, 2000, 3000);
my @finance_loan_term = (60, 72, 84);
my @finance_loan_apr = (4, 4.5, 4.75, 5);
my @finance_down_payment = (2000, 3000, 5000);
my @finance_emp = (200, 250, 300);

# {
#     for my $listing_id (@listing_id) {
#         my $id = $listing_id;                             # replace NULL with a proper value
#         my $api_key = undef; # replace NULL with a proper value
#         my $result = $api->get_listing(id => $id, api_key => $api_key);
#          my $media = $result->{media};
#         print ref $media,"\n";
#     }
# }


# get_listing_extra test

# {
#     for my $listing_id (@listing_id) {
#         my $id = $listing_id;      # replace NULL with a proper value
#         my $api_key = "ifQw00jC3LtQS4c4rfSbJOJFY7EmTvWP"; # replace NULL with a proper value
#         my $result = $api->get_listing_extra(id => $id, api_key => $api_key);
#         my $id_l = $result->{id};
#         my $option = $result->{options};
#         my $feature = $result->{features};
#         my $seller_cmts = $result->{seller_cmts};
#         # print ref $id_l,"\n";
#         #  print ref $option,"\n";
#         # print ref $feature,"\n";
#         # print ref $seller_cmts,"\n";
#         is(ref $option,'ARRAY','should validate extra in listings queries');
#         is(ref $feature,'ARRAY','should validate extra in listings queries');
#     }
# }
#
# #
# # get_listing_media test
# #
# {
#     for my $listing_id (@listing_id) {
#         my $id = $listing_id;                             # replace NULL with a proper value
#         my $api_key = "ifQw00jC3LtQS4c4rfSbJOJFY7EmTvWP"; # replace NULL with a proper value
#         my $result = $api->get_listing_media(id => $id, api_key => $api_key);
#         my $id_l = $result->{id};
#         my $photo_links = $result->{photo_links};
#         is(ref $photo_links, 'ARRAY', 'should validate media in listings queries');
#     }
# }


#
# search test
#
my @yearmake;
foreach my $year(@year){
    foreach my $make(@make){
        push( @yearmake, "$year-$make");
    }
}

my @makemodel;
foreach my $make(@make){
    foreach my $model(@model){
        push( @makemodel, "$make-$model");
    }
}

my @modeltrim;
foreach my $model(@model){
    foreach my $trim(@trim){
        push( @modeltrim, "$model-$trim");
    }
}

my @yearmakemodel;
foreach my $year (@year) {
    foreach my $make (@make) {
        foreach my $model (@model) {
            push( @yearmakemodel, "$year-$make-$model");
        }
    }
}

my @yearmakemodeltrim;
foreach my $year (@year) {
    foreach my $make (@make) {
        foreach my $model (@model) {
            foreach my $trim(@trim){
                push( @yearmakemodeltrim, "$year-$make-$model-$trim");
            }
        }
    }
}

my @extintcolor;
foreach my $extcolor (@exterior_color) {
    foreach my $intcolor(@interior_color){
        push( @extintcolor, "$extcolor-$intcolor");
    }
}

my @extcolorbdtyp;
foreach my $extcolor (@exterior_color) {
    foreach my $bdtyp(@body_type){
        push( @extcolorbdtyp, "$extcolor-$bdtyp");
    }
}

my @extcolorbdtypbdsbtyp;
foreach my $extcolor (@exterior_color) {
    foreach my $bdtyp(@body_type){
        foreach my $bdsbtyp(@body_subtype) {
            push(@extcolorbdtypbdsbtyp, "$extcolor-$bdtyp-$bdsbtyp");
        }
    }
}

my @intcolextcolorbdtypbdsbtyp;
foreach my $intcolor(@interior_color) {
    foreach my $extcolor (@exterior_color) {
        foreach my $bdtyp (@body_type) {
            foreach my $bdsbtyp (@body_subtype) {
                push(@intcolextcolorbdtypbdsbtyp, "$intcolor-$extcolor-$bdtyp-$bdsbtyp");
            }
        }
    }
}

my @sellertypvehicaltyp;
foreach my $sellertyp (@seller_type) {
    foreach my $vehicltyp (@vehicle_type) {
        push(@sellertypvehicaltyp, "$sellertyp-$vehicltyp");
    }
}

my @latlong;
foreach my $lat (@latitude) {
    foreach my $long (@longitude) {
        push(@latlong, "$lat-$long");
    }
}

my @vincomb;
foreach my $vin1 (@vin) {
    foreach my $vin2 (@vin) {
        push(@vincomb, "$vin1-$vin2");
    }
}

my @taxvincomb;
foreach my $taxvin1 (@taxonomy_vins) {
    foreach my $taxvin2 (@taxonomy_vins) {
        push(@taxvincomb, "$taxvin1-$taxvin2");
    }
}

my @milescomb;
foreach my $i (0..1){
    foreach my $j(2..3){
        @milescomb = "$miles_range[$i]-$miles_range[$j]";
    }
}

my @pricecomb;
foreach my $i (0..1){
    foreach my $j(2..3){
        @pricecomb = "$price_range[$i]-$price_range[$j]";
    }
}

my @domcomb;
foreach my $i (0..1){
    foreach my $j(2..3){
        @domcomb = "$dom_range[$i]-$dom_range[$j]";
    }
}

my @sortorder;
foreach my $sort_by (@sort_by) {
    foreach my $sort_order (@sort_order) {
        push(@sortorder, "$sort_by-$sort_order");
    }
}

my @sortfields;
foreach my $i (0..1) {
    foreach my $j (-2..-1) {
        foreach my $sort_order (@sort_order) {
            @sortfields = "$sort_by[$i]-$sort_by[$j]-$sort_order";
        }
    }
}

my @miscfields;
foreach my $i (0..4) {
    push(@miscfields,"year=$year[$i],
      make=$make[$i],
      model=$model[$i],
      trim=$trim[$i],
      exterior_color=$exterior_color[$i],
      interior_color=$interior_color[$i],
      body_type=$body_type[$i]");
}

my @allqueryparam;
foreach my $allqueryparam (@miscfields){
    push(@allqueryparam,split(/,/,$allqueryparam));
}

foreach my $queryparam (@allqueryparam){
    print$queryparam;
}

{
    foreach my $finance_term (@finance_loan_term) {
        my $finance_trm = $finance_term;
        my $api_key = undef;
        my $car_type = "used";
        my $rows = 50;
        my $sort_by = "id";
        my $sort_order = "desc";
        my $result = $api->search(finance_loan_term => $finance_trm, api_key => $api_key, car_type=>$car_type, rows=>$rows, sort_by=>$sort_by, sort_order=>$sort_order);
        foreach my $listing ($result->{listings}) {
            foreach my $list (@$listing) {
                foreach my $finance_options ($list->{financing_options}) {
                    foreach my $finance_option (@$finance_options) {
                        is($finance_option->{loan_term},$finance_term ,'validate finance_loan_term');
                    }
                }
            }
        }
    }
}

{
    foreach my $lease_term (@lease_term) {
        my $lease_trm = $lease_term;
        my $api_key = undef;
        my $car_type = "used";
        my $rows = 50;
        my $sort_by = "id";
        my $sort_order = "desc";
        my $result = $api->search(lease_term => $lease_trm, api_key => $api_key, car_type=>$car_type, rows=>$rows, sort_by=>$sort_by, sort_order=>$sort_order);
        foreach my $listing ($result->{listings}) {
            foreach my $list (@$listing) {
                foreach my $leasing_options ($list->{leasing_options}) {
                    foreach my $lease_option (@$leasing_options) {
                        is($lease_option->{lease_term},$lease_term ,'validate lease_term');
                    }
                }
            }
        }
    }
}


{

    my $api_key = undef;
    my $carfax_1="true";
    my $carfax_title="true";
    my $make = "ford";
    my $year = "2015";
    my $result = $api->search(carfax_1_owner => $carfax_1, api_key => $api_key, carfax_clean_title=>$carfax_title, make=>$make, year=>$year);
    foreach my $listing ($result->{listings}) {
        foreach my $list (@$listing) {
            my $carfax_1_owner = $list->{carfax_1_owner};
            my $carfax_clean_title = $list->{carfax_clean_title};
            is($carfax_1_owner,1,'carfax_1_owner');
            is($carfax_clean_title,1,'carfax_title');
        }
    }
}

{
    foreach my $zip (@zip) {
        my $api_key = undef;
        my $car_type = "used";
        my $sort_by = "id";
        my $sort_order = "desc";
        my $make = "ford";
        my $year = "2015";
        my $result = $api->search(api_key => $api_key, zip=>$zip, sort_by=>$sort_by, sort_order=>$sort_order, year=>$year, make=>$make, car_type=>$car_type);
        foreach my $listing ($result->{listings}) {
            foreach my $list (@$listing) {
                foreach my $z ($list->{dealer}{zip}){
                    is ($z,$zip,'Validate zip code search');
                }
            }
        }
    }
}

{

    my $api_key = undef;
    my $car_type = "used";
    my $sort_by = "dist";
    my $sort_order = "desc";
    my $latitude = 39.73;
    my $longitude=-104.99;
    my $radius = 200;
    my $result = $api->search(latitude=>$latitude,longitude=>$longitude,radius=>$radius,api_key => $api_key, sort_by=>$sort_by, sort_order=>$sort_order, car_type=>$car_type);
    foreach my $listing ($result->{listings}) {
        foreach my $list (@$listing) {
            foreach my $z ($list->{dist}){
                cmp_ok( $z, '<=', $radius);
            }
        }
    }
}

{

    my $api_key = undef;
    my $car_type = "used";
    my $sort_order = "desc";
    my $latitude = 39.73;
    my $longitude=-104.99;
    my $radius = 200;
    my $result = $api->search(latitude=>$latitude,longitude=>$longitude,radius=>$radius,api_key => $api_key, sort_order=>$sort_order, car_type=>$car_type);
    my @dist;
    my @sort;
    my @reverse;
    foreach my $listing ($result->{listings}) {
        foreach my $list (@$listing) {
            foreach my $z ($list->{dist}){
                if ($z != 0) {
                    print $z,"\n";
                    push(@dist, $z)
                }
            }
        }
    }
    @sort = sort @dist;
    @reverse = reverse @sort;
    is(@reverse, @dist, 'should validate descending sorting order on distance');

}

{
    foreach my $year (@year) {
        my $api_key = undef;
        my $car_type = "used";
        my $sort_order = "desc";
        my $sort_by = "id";
        my $result = $api->search(api_key => $api_key, year => $year, sort_order => $sort_order, sort_by => $sort_by, car_type => $car_type);
        foreach my $listing ($result->{listings}) {
            foreach my $list (@$listing) {
                foreach my $year_got ($list->{build}{year}) {
                    is($year_got, $year, 'validate years');
                }
            }
        }
    }
}

{
    foreach my $make (@make) {
        my $api_key = undef;
        my $car_type = "used";
        my $sort_order = "desc";
        my $sort_by = "id";
        my $result = $api->search(api_key => $api_key, make => $make, sort_order => $sort_order, sort_by => $sort_by, car_type => $car_type);
        foreach my $listing ($result->{listings}) {
            foreach my $list (@$listing) {
                foreach my $make_got ($list->{build}{make}) {
                    is($make_got, $make, 'validate make');
                }
            }
        }
    }
}

{
    foreach my $model (@model) {
        my $api_key = undef;
        my $car_type = "used";
        my $sort_order = "desc";
        my $sort_by = "id";
        my $result = $api->search(api_key => $api_key, model => $model, sort_order => $sort_order, sort_by => $sort_by, car_type => $car_type);
        foreach my $listing ($result->{listings}) {
            foreach my $list (@$listing) {
                foreach my $model_got ($list->{build}{model}) {
                    is($model_got, $model, 'validate model');
                }
            }
        }
    }
}

{
    foreach my $trim (@trim) {
        my $api_key = undef;
        my $car_type = "used";
        my $sort_order = "desc";
        my $sort_by = "id";
        my $result = $api->search(api_key => $api_key, trim => $trim, sort_order => $sort_order, sort_by => $sort_by, car_type => $car_type);
        foreach my $listing ($result->{listings}) {
            foreach my $list (@$listing) {
                foreach my $trim_got ($list->{build}{trim}) {
                    is($trim_got, $trim, 'validate trim');
                }
            }
        }
    }
}



1;
