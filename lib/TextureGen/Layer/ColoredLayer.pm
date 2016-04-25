package TextureGen::Layer::ColoredLayer;

use Moose;

extends TextureGen::Layer;

has color => (
	is			=> 'ro'
	isa			=> 'TextureGen::Color'
);

=head2 colorized

For a given color, generate a Image::Magick object for this color with all the
attributes (variation, saturation, lightening and coverage) applied to it.

=cut

sub colorized {
	my $self = shift;
}

