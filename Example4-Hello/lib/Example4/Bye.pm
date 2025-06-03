package Example4::Bye;

use strict;
use warnings;

# VERSION   <- Allows Dist::Zilla to inject the version

sub new { bless {}, shift }

sub message { "Goodbye" }

1;

__END__

=head1 NAME

Example4::Bye - Returns a "Goodbye" message
