package Example3::Bye;

use strict;
use warnings;

# VERSION   <- Allows Dist::Zilla to inject the version

sub new { bless {}, shift }

sub message { "Goodbye" }

1;

__END__

=head1 NAME

Example3::Bye - Returns a "Goodbye" message
