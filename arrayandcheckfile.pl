use strict;
use warnings;

sub main {
    my $file = 'logo.png'; # if it is a single variable use $
    my @files = (
        'logo.png',
        'download.pl',
        'missing file',
    );  # if it is an array use @

    foreach my $f(@files) {  #loop @files array
        if(-f $f) {
            print "found file $f\n";
        }
        else {
            print "file not found $f\n";
        }
    }
}

main();
