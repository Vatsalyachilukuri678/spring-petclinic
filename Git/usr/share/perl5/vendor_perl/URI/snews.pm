package URI::snews;  # draft-gilman-news-url-01

use strict;
use warnings;

<<<<<<< HEAD
our $VERSION = '5.10';
=======
our $VERSION = '5.09';
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

use parent 'URI::news';

sub default_port { 563 }

sub secure { 1 }

1;
