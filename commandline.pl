#! /usr/bin/perl

use strict;
use warnings;

use Data::Dumper;
use Getopt::Std;

sub main {
    #print Dumper(@ARGV);
    my %opts;
    #define three optional argument, a,f,c,  and f: means option f has value eg: -f test.xml and 
    #then I can get test.xml from %opts 
    getopts('af:c', \%opts);
    #print Dumper(%opts);

    my $file = $opts{'f'};
    print Dumper($file);
}

main();
