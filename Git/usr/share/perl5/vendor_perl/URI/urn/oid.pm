package URI::urn::oid;  # RFC 2061

use strict;
use warnings;

<<<<<<< HEAD
our $VERSION = '5.10';
=======
our $VERSION = '5.09';
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

use parent 'URI::urn';

sub oid {
    my $self = shift;
    my $old = $self->nss;
    if (@_) {
	$self->nss(join(".", @_));
    }
    return split(/\./, $old) if wantarray;
    return $old;
}

1;
