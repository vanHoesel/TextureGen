use strict;
use warnings;

use Image::Magick;

my $image = Image::Magick->new;
print $image->Montage(geometry=>'160x160', tile=>'2x2', texture=>'granite:');
print $image->Write("Test");
