package URI::ldapi;

use strict;
use warnings;

<<<<<<< HEAD
our $VERSION = '5.10';
=======
our $VERSION = '5.09';
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

use parent qw(URI::_ldap URI::_generic);

use URI::Escape ();

sub un_path {
    my $self = shift;
    my $old = URI::Escape::uri_unescape($self->authority);
    if (@_) {
	my $p = shift;
	$p =~ s/:/%3A/g;
	$p =~ s/\@/%40/g;
	$self->authority($p);
    }
    return $old;
}

sub _nonldap_canonical {
    my $self = shift;
    $self->URI::_generic::canonical(@_);
}

1;
