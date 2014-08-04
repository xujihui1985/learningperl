use strict;
use warnings;
# input test subroutine from Speak

use lib '/home/sean/code/perlmodule';

use Communication2::Speak qw(test);
use Data::Dumper;

sub main {
    #Speak::test();

    #my @dogs = ("retriever", "labrador");

    test();
    #qw make it easy to create array
    my @dogs = qw(retriever labrador alsatin);
    print Dumper(@dogs);
}

main();
