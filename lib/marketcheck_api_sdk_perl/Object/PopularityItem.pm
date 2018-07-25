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
package marketcheck_api_sdk_perl::Object::PopularityItem;

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

use marketcheck_api_sdk_perl::Object::Number;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
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



__PACKAGE__->class_documentation({description => '',
                                  class => 'PopularityItem',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'text' => {
    	datatype => 'string',
    	base_name => 'text',
    	description => 'Description for which popularity should be show eg: 2016 ford F-150 Lariat vs All Other Cars',
    	format => '',
    	read_only => '',
    		},
    'left' => {
    	datatype => 'Number',
    	base_name => 'left',
    	description => 'Left side rating for above description (2016 ford F-150 Lariat)',
    	format => '',
    	read_only => '',
    		},
    'right' => {
    	datatype => 'Number',
    	base_name => 'right',
    	description => 'Right side rating for above description (All Other Cars)',
    	format => '',
    	read_only => '',
    		},
    'difference' => {
    	datatype => 'Number',
    	base_name => 'difference',
    	description => 'Difference depending upon left and right analysis',
    	format => '',
    	read_only => '',
    		},
    'thumbs' => {
    	datatype => 'string',
    	base_name => 'thumbs',
    	description => 'Thumbs up/down depending upon left and right analysis numbers',
    	format => '',
    	read_only => '',
    		},
    'delta_percent' => {
    	datatype => 'Number',
    	base_name => 'delta_percent',
    	description => 'Delta percent',
    	format => '',
    	read_only => '',
    		},
    'color' => {
    	datatype => 'string',
    	base_name => 'color',
    	description => 'Color depending upon left and right analysis numbers',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'text' => 'string',
    'left' => 'Number',
    'right' => 'Number',
    'difference' => 'Number',
    'thumbs' => 'string',
    'delta_percent' => 'Number',
    'color' => 'string'
} );

__PACKAGE__->attribute_map( {
    'text' => 'text',
    'left' => 'left',
    'right' => 'right',
    'difference' => 'difference',
    'thumbs' => 'thumbs',
    'delta_percent' => 'delta_percent',
    'color' => 'color'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
