use strict;
use warnings;

use Data::Dumper;

sub main {
    my %months = (
        'Jan' => 1,
        'Fab' => 2,
        'Mar' => 3,
        'Apr' => 4,
    );

    my %days = (
        1 => "Monday",
        2 => "Tuesday",
        3 => "Wednesday",
        4 => "Thursday",
    );

    print $months{"Jan"}."\n";

    print $days{1}."\n";

    my @months = keys %months; # return the keys of the hash return array

    foreach my $m(@months) {
        my $value = $months{$m}."\n";
        print "$m: $value\n";
    }

    #define multipal variable in one statement
    #iterator hash
    while(my ($key, $value) = each %days){
        print "$key: $value\n";
    }

    #we can define an array of variable like this
    my ($one, $two, $three) = (1,2,3);

    print "the value of \$two is $two\n";

}

main();
