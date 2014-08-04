package Data::Person;

sub new {
    my $class = shift;
    my $self = {
        _firstName => shift,
        _age => shift,
    };

    bless($self, $class);
    $self;

    #if use % then use () that means self is not a reference, instead it is a hash
    #my %self = (
    #    "_firstName" => shift,
    #)
}

sub setFirstName {
    my ($self, $firstName) = @_;
    $self->{"_firstName"} = $firstName if defined($firstName);
}
sub getFirstName {
    my($self) = @_;
    return $self->{"_firstName"};
}
sub greet {
    my($self, $greeting) = @_;
    my $myname = $self->getFirstName();
    print "Hi my name is ".$self->getFirstName()." $greeting\n";
}

1;
