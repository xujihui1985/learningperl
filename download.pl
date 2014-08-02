use strict;
use warnings;

use LWP::Simple;

sub main {
    print "Downloading...\n";
    # print get("http://baidu.com");

    # getstore("http://baidu.com", "baidu.html");

    my $code = getstore("http://baidu.com/img/bdlogo.png", "logo.png");
    if($code == 200) {
        print "success...\n";
    }
    else {
        print "failed\n";
    }

}

main();
