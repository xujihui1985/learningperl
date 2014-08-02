use strict;
use warnings;

$|=1;

sub main {
    my $output = 'outfile.txt'; 
    my $input = 'download.pl'; 


    #OUTPUT is file handle
    #if you want to create a file, you must put > in fount of the file name means, this file is for write
    #in perl use . to concat string
    open(INPUT,$input) or die("could not open $input\n");
    open(OUTPUT,'>'.$output) or die("can't create $output\n");
    while(my $line = <INPUT>) {
        if($line =~ /\b(su)..(ess)\b/){ #() is group to capture
            print "first match: $1 and second match: $2\n";  #$1 is the value reference to the captured group 
            #$2 is the value reference to the second captured group 
            my $modified = $line."hello";
            $modified =~ s/success/SUCCESS/ig; #replace success with SUCCESS in each line
            print OUTPUT $modified;
        }
    }
    close(OUTPUT);
    close(INPUT);
}

sub average {
    my $n = scalar(@_);
    print $n;
}

main();
average(1,2,3);
