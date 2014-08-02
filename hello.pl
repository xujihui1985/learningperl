use strict;
use warnings;

use Data::Dumper;

sub main {
    my @array = qw(this probram shows how to use scalar);
    print Dumper(scalar(@array));
}

main();
