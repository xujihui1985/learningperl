use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {
    my $input = 'test.csv';

    unless(open(INPUT, $input)) {
        die("\n cannot open $input\n");
    }

    <INPUT>; #readoff the header without doing anything
    while(my $line = <INPUT>) {
        #print $_;  # $_ is the line it read into

        chomp $line; #chome is to remove the trailing newline from the $line variable, this is a common pattern
        #if without $line, chomp inplictly remove the trailing new line from variable $_

        my @values = split /\s*,\s*/, $line;
        # print $values[0]."\n"; #print the first element in the array, as it is a single value, so use $ to reference the variable
        print (join '|', @values); # join concat the array with the first argument and return a string as result

        #print Dumper(@values);
    }
    close INPUT;
}

main();
