=begin comment

Marketcheck Cars API

<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package marketcheck_api_sdk_perl::Object::Mds;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");


#
#Describes Market days supply results for year make model trim combination
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

Marketcheck Cars API

<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "marketcheck_api_sdk_perl::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'Describes Market days supply results for year make model trim combination',
                                  class => 'Mds',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'mds' => {
    	datatype => 'int',
    	base_name => 'mds',
    	description => 'Provides Market days supply count',
    	format => '',
    	read_only => '',
    		},
    'total_active_cars_for_ymmt' => {
    	datatype => 'int',
    	base_name => 'total_active_cars_for_ymmt',
    	description => 'Active cars for ymmt combination',
    	format => '',
    	read_only => '',
    		},
    'total_cars_sold_in_last_45_days' => {
    	datatype => 'int',
    	base_name => 'total_cars_sold_in_last_45_days',
    	description => 'Cars sold in last 45 days',
    	format => '',
    	read_only => '',
    		},
    'sold_vins' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'sold_vins',
    	description => 'Sold vins array',
    	format => '',
    	read_only => '',
    		},
    'year' => {
    	datatype => 'int',
    	base_name => 'year',
    	description => 'Year of vin provided',
    	format => '',
    	read_only => '',
    		},
    'make' => {
    	datatype => 'string',
    	base_name => 'make',
    	description => 'Make of vin provided',
    	format => '',
    	read_only => '',
    		},
    'model' => {
    	datatype => 'string',
    	base_name => 'model',
    	description => 'Model of vin provided',
    	format => '',
    	read_only => '',
    		},
    'trim' => {
    	datatype => 'string',
    	base_name => 'trim',
    	description => 'Trim of vin provided',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'mds' => 'int',
    'total_active_cars_for_ymmt' => 'int',
    'total_cars_sold_in_last_45_days' => 'int',
    'sold_vins' => 'ARRAY[string]',
    'year' => 'int',
    'make' => 'string',
    'model' => 'string',
    'trim' => 'string'
} );

__PACKAGE__->attribute_map( {
    'mds' => 'mds',
    'total_active_cars_for_ymmt' => 'total_active_cars_for_ymmt',
    'total_cars_sold_in_last_45_days' => 'total_cars_sold_in_last_45_days',
    'sold_vins' => 'sold_vins',
    'year' => 'year',
    'make' => 'make',
    'model' => 'model',
    'trim' => 'trim'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
