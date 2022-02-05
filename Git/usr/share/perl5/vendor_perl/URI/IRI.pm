package URI::IRI;

# Experimental

use strict;
use warnings;
use URI ();

use overload '""' => sub { shift->as_string };

<<<<<<< HEAD
our $VERSION = '5.10';
=======
our $VERSION = '5.09';
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

sub new {
    my($class, $uri, $scheme) = @_;
    utf8::upgrade($uri);
    return bless {
	uri => URI->new($uri, $scheme),
    }, $class;
}

sub clone {
    my $self = shift;
    return bless {
	uri => $self->{uri}->clone,
    }, ref($self);
}

sub as_string {
    my $self = shift;
    return $self->{uri}->as_iri;
}

our $AUTOLOAD;
sub AUTOLOAD
{
    my $method = substr($AUTOLOAD, rindex($AUTOLOAD, '::')+2);

    # We create the function here so that it will not need to be
    # autoloaded the next time.
    no strict 'refs';
    *$method = sub { shift->{uri}->$method(@_) };
    goto &$method;
}

sub DESTROY {}   # avoid AUTOLOADing it

1;
