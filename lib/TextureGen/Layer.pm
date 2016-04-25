package TextureGen::Layer

use Moose;

=head1 About

A Pattern::Layer object can consist of a numbr of effect layers. Each of them
are supposed to be applied to a Image::Magick object that has been filled with
1 color, as if it would be like a printer.

Eech of these effect layers can have their own pixel dimensions, as they are
applied individually. But more convenient is it to have the same sizes for all
and thus can then be treated as a normal HSLA defined image.

=cut

=head2 variation

a greyscale image that will make color shifts possible
0.000 = 180 degrees left
0.500 = no change
1.000 = 180 degrees right

=cut

has variation => (
	is			=> 'ro',
	isa			=> 'Image::Magick',
	default		=> sub { Image::Magick->new->Quantize( colorspace=>'gray' ) },
); 

=head2 saturation

a greyscale image that will make the color more or less saturated
0.000 = grey
0.500 = no change
1.000 = most saturated

=cut

has saturation => (
	is			=> 'ro',
	isa			=> 'Image::Magick',
	default		=> sub { Image::Magick->new->Quantize( colorspace=>'gray' ) },
); 

=head2 lightening

a greyscale image that will make colors lighter or darker, giving it some kind
of embossing

0.000 = making it fully black
0.500 = no change
1.000 = making it fully white

=cut

has lightening => (
	is			=> 'ro',
	isa			=> 'Image::Magick',
	default		=> sub { Image::Magick->new->Quantize( colorspace=>'gray' ) },
); 

=head2 coverage

a greyscale image, where 1 is full cover and 0 is no cover

=cut

has coverage => (
	is			=> 'ro',
	isa			=> 'Image::Magick',
	default		=> sub { Image::Magick->new->Quantize( colorspace=>'gray' ) },
); 

=head1 Methods

=head2 new_from_HSLA

a convenient method to create a Layer object from a single composite
Image::Magick object

=cut

sub new_from_HSLA {};

# =head2 to_HSLA
# 
# Creates a composite Image::Magick object, suitable for writing to file.
# 
# =cut
# 
# sub to_HSLA {};

has width => (
	is			=> 'ro',
	isa			=> 'Number::Fraction',
	default		=> '1/1',
);

has height => (
	is			=> 'ro',
	isa			=> 'Number::Fraction',
	default		=> '2/3'
)
