package URI::ssh;

use strict;
use warnings;

<<<<<<< HEAD
our $VERSION = '5.10';
=======
our $VERSION = '5.09';
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

use parent 'URI::_login';

# ssh://[USER@]HOST[:PORT]/SRC

sub default_port { 22 }

sub secure { 1 }

1;
