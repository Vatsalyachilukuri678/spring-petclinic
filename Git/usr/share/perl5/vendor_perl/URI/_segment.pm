package URI::_segment;

# Represents a generic path_segment so that it can be treated as
# a string too.

use strict;
use warnings;

use URI::Escape qw(uri_unescape);

use overload '""' => sub { $_[0]->[0] },
             fallback => 1;

<<<<<<< HEAD
our $VERSION = '5.10';
=======
our $VERSION = '5.09';
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

sub new
{
    my $class = shift;
    my @segment = split(';', shift, -1);
    $segment[0] = uri_unescape($segment[0]);
    bless \@segment, $class;
}

1;
