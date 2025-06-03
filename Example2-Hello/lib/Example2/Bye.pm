package Example2::Bye;

use strict;
use warnings;

sub new { bless {}, shift }

sub message { "Goodbye" }

1;

__END__

=head1 NAME

Example2::Bye - Returns a "Goodbye" message
