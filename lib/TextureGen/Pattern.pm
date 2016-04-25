package TextureGen::Pattern;

use Moose;

has layers => (
    is      	=> 'ro',
    isa     	=> 'ArrayRef[ TextureGen::Layer::ColoredLayer ]',
    default 	=> sub { [] }
);

h# as width => (
# 	is			=> 'ro',
# 	isa			=> 'Number::Fraction',
# 	default		=> '1/1',
# );
# 
# has heigth => (
# 	is			=> 'ro',
# 	isa			=> 'Number::Fraction',
# 	default		=> '2/3'
# )

sub set_color_schema {
	my $self = shift;
	my @colors = @_;
	
	
}

