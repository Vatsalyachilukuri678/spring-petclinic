package URI::http;

use strict;
use warnings;

<<<<<<< HEAD
our $VERSION = '5.10';
=======
our $VERSION = '5.09';
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

use parent 'URI::_server';

sub default_port { 80 }

sub canonical
{
    my $self = shift;
    my $other = $self->SUPER::canonical;

    my $slash_path = defined($other->authority) &&
        !length($other->path) && !defined($other->query);

    if ($slash_path) {
	$other = $other->clone if $other == $self;
	$other->path("/");
    }
    $other;
}

1;
