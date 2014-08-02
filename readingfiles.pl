#! /usr/bin/perl

use strict;
use warnings;

$|=1;  # turn off buffer

sub main {
    my $file = 'download.pl';  # single quote do not interprate string

    open(INPUT, $file) or die("input file $file not found.\n");
    while(my $line = <INPUT>){ # read online from INPUT
        if($line =~ /success.../) {  # if $line matches success regex
            print $line;
        }
    }
    close(INPUT);
}

main();
