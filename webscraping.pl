use strict;
use warnings;

use LWP::Simple;

sub main {
    my $content = get("http://xujihui1985.github.io");

    unless(defined($content)) {
        die ("Unreachable url\n");
    }

    # to prefix m in front of '' that tell perl the express inside the '' is regex
    if($content =~ m'<div class="page-header">(.+)</div>'mi){
        my $title = $1;
        print "$title\n";
    }
    else{
        print "title not found";
    }
}

main();
