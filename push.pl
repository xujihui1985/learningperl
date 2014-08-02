use strict;
use warnings;

use Data::Dumper;

sub main {
    my $input = 'test.csv';

    unless(open(INPUT, $input)) {
        die("\n cannot open $input\n");
    }

    <INPUT>; #readoff the header without doing anything

    my @lines;
    my $count = 0;

    while(my $line = <INPUT>) {
        #print $_;  # $_ is the line it read into

        chomp $line; #chome is to remove the trailing newline from the $line variable, this is a common pattern
        #if without $line, chomp inplictly remove the trailing new line from variable $_

        my @values = split /\s*,\s*/, $line;
        #$lines[$count]=$line;
        #$count ++;
        push @lines, $line; #push $line to @lines
    }

    print Dumper(@lines);
    close INPUT;
}

main();
