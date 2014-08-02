use strict;
use warnings;

use Data::Dumper;

sub main {

    my $input = 'test2.csv';

    open(INPUT, $input) || die("can not open file $input");
    <INPUT>;
    my @data;
    while (my $line = <INPUT>) {

        $line =~ s/^\s*|s*$//g;  #trim the empty on the start of line and the end of line

        $line =~ /\S+/ or next;  #continue if the $line is empty
        chomp $line;

        print "$line\n";

        #my ($header1, $header2, $header3, $header4) = split /\s*,\s*/, $line;
        my @values = split /\s*,\s*/, $line;

        if(scalar(@values) != 4) {
            print "Invalid line: $line\n";
            next;
        }

        # compare string in perl use eq

        my %values = (
            "header1" => $values[0],
            "header2" => $values[1],
            "header3" => $values[2],
            "header4" => $values[3],
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
