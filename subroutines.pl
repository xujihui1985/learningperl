#! /usr/bin/perl

use strict;
use warnings;

use Data::Dumper;
use Getopt::Std;

=pod
    this is multiline
    this is xml parse
    use with care.
    adfdafasfa
    fdsfsdafadssadf
=cut

sub main {
    my %opts;
    getopts('af:r', \%opts);

    my $opts_ref = \%opts;

    #use hash directly.
    print "$opts{'f'}\n";

    #use reference to hash
    #-> operator is used to dereference the hash
    print $opts_ref->{'f'};

    if(!checkusage("hello", 7,\%opts)) {
        usage();
        exit();
    }

    my $input_dir = $opts{"d"};

}

sub get_files {
    my $input_dir = shift;

    unless(opendir(INPUTDIR, $input_dir)){
        die "unable to open director $input_dir\n";
    }

    my @files = readdir(INPUTDIR);

    closedir(INPUTDIR);

    #return the reference of the files array
    \@files;
}

sub checkusage {

    # in perl the default argument of shift is @_ so @_ can be ommit
    my $hello = shift;
    my $num = shift @_;
    my $opts_ref = shift;

    my $a = $opts_ref->{'a'};
    my $r = $opts_ref->{'r'};
    my $f = $opts_ref->{'f'};

    unless(defined($r) and defined($f)) {
        return 0;
    }

    unless($f =~ /\.xml$/){
        return 0;
    }

    #perl save argument to the magic variable @_
    #unbox the argument to $hello and $num
    #my ($hello, $num) = @_;
    return 1; # return false
}

sub usage {
    #multiline string
    my $help = <<USAGE;

usage: perl subroutines.pl -f <filename> -a
    -f <filename> specify xml file name to parse
    -a            test options
    -v            verbose

example usage:
    perl subroutines.pl -f test.xml -v
USAGE
    print "$help\n";
}

main();
