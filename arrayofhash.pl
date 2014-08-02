use strict;
use warnings;

use Data::Dumper;


sub main {
    my %hash1 = (
        "cat" => "meat",
        "birds" => "seed",
        "fish" => "warms",
    );

    my @test;

    my $hash1_ref = \%hash1;

    push @test, $hash1_ref;
    
    print Dumper(@test);

    print $test[0]; #print the first element of the array
}

main();
