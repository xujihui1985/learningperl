use strict;
use warnings;

use Data::Dumper;

sub main {

    my $input = 'test.csv';

    open(INPUT, $input) || die("can not open file $input");
    <INPUT>;
    my @data;
    while (my $line = <INPUT>) {
        chomp $line;

        my ($header1, $header2, $header3, $header4) = split /\s*,\s*/, $line;

        my %values = (
            "header1" => $header1,
            "header2" => $header2,
            "header3" => $header3,
            "header4" => $header4,
        );

        push @data, \%values;
    }
    close INPUT;

    print Dumper(@data);

    foreach my $data(@data) {
        print $data->{"header1"}."\n";
    }
}


main();
