use strict;
use warnings;

$|=1;

=pod
we can run system command in perl directly
=cut

sub main {
    my $command = "cd ..; ls -l";
    my @output = `$command`;

    print join('', @output);
}

main();
