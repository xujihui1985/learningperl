use strict;
use warnings;

use Data::Dumper;

my @animals = ('dog','cat','rabbit');
my @fruits = ('apple','banana');
my @values;

my $temp = \@animals; # $temp is reference to @animals array

push @values, \@animals;
push @values, \@fruits;

sub main {
    print Dumper(@values);
    
    for my $v(@values) {
        print "@$v\n"; # dereference the array
        print $v->[0]."\n"; # dereference the array
    }
}

main()
