#!/usr/local/bin/perl
use Image::Magick;

my($image, $x);

$image = Image::Magick->new;
$x = $image->Read('Snapshot_001.png');
warn "$x" if "$x";

$x = $image->Crop(geometry=>'100x100+100+100');
warn "$x" if "$x";

$x = $image->Write('x.png');
warn "$x" if "$x";
