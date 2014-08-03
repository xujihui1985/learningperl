#! /usr/bin/perl

use strict;
use warnings;

$|=1;

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
    getopts('f:rd:', \%opts);

    #get the reference of the opts hash
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
    my $files = get_files($input_dir);
    print Dumper($files);
    process_files($files, $input_dir);
}

sub get_files {
    my $input_dir = shift;

    unless(opendir(INPUTDIR, $input_dir)){
        die "unable to open director $input_dir\n";
    }

    my @files = readdir(INPUTDIR);

    closedir(INPUTDIR);

    #grep take 2 parameters, the first is the regex, and second is the array to filter
    #and it return a new array
    #filter all the file that is surfixed by xml
    my @greped_files = grep(/\.xml$/,@files);

    #return the reference of the files array
    \@greped_files;
}

=pod

=cut
sub process_files {
    my ($files, $input_dir) = @_;

    print Dumper($files);

    # dereference $files array
    for my $file(@$files) {
        process_file($file, $input_dir);
    }
}

sub process_file {
    my ($file, $input_dir) = @_;
    
    my $filepath = "$input_dir/$file";

    print $filepath."\n";

    open(INPUTFILE, $filepath) || die("unable to open $filepath\n");
    #this magic variable means seprate each chunk by </entry>;
    $/ = "</html>";
    my $count = 0;
    while(my $chunk = <INPUTFILE>) {
        chomp $chunk;
        print "$count: $chunk";
        $count++;
        
        my @header = $chunk =~ m'<head>(.*?)</head>'sg; #s means match multiple lines
        print Dumper(@header);
    }
    close(INPUTFILE);

    print "Processing $file in $input_dir...\n";
}



sub checkusage {

    # in perl the default argument of shift is @_ so @_ can be ommit
    my $hello = shift;
    my $num = shift @_;
    my $opts_ref = shift;

    my $a = $opts_ref->{'a'};
    my $r = $opts_ref->{'r'};
    my $f = $opts_ref->{'f'};

    unless(defined($r) or defined($f)) {
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
