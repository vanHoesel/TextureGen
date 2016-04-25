use strict;
use warnings;

use Image::Magick;

my $star = Image::Magick->new();
$star->Read("gold_star.png");
my $star_width = $star->Get('width');
my $star_height = $star->Get('height');

print "Star size: $star_width x $star_height\n";

my $image = Image::Magick->new(
    size        => '400x400',
    'tile-offset' => '+25+25',
);

print $image->ReadImage('canvas:white');
print $image->Transform(crop=>'400x400-25,-25');

print $image->Composite(
    image       => $star,
#   compose     => 'DstOver',
    tile        => 1,
#   geometry    => '200x200+50x20',
    x           => 0,
    y           => 0,
#   gravity     => 'SouthEast',
);

print $image->Write('tiles.png');
