use strict;
use warnings;

use Data::Person;

$|=1;

sub main {
    my $person1 = new Data::Person("Bob", 45);
    $person1->setFirstName("Sean");
    print $person1->getFirstName();
    $person1->greet("How are you");
}

main();
