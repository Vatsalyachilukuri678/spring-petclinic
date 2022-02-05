package URI::file::OS2;

use strict;
use warnings;

use parent 'URI::file::Win32';

<<<<<<< HEAD
our $VERSION = '5.10';
=======
our $VERSION = '5.09';
>>>>>>> bc3b86ada9f328f31609c329e193b93b011d940c

# The Win32 version translates k:/foo to file://k:/foo  (?!)
# We add an empty host

sub _file_extract_authority
{
    my $class = shift;
    return $1 if $_[0] =~ s,^\\\\([^\\]+),,;  # UNC
    return $1 if $_[0] =~ s,^//([^/]+),,;     # UNC too?

    if ($_[0] =~ m#^[a-zA-Z]{1,2}:#) {	      # allow for ab: drives
	return "";
    }
    return;
}

sub file {
  my $p = &URI::file::Win32::file;
  return unless defined $p;
  $p =~ s,\\,/,g;
  $p;
}

1;
