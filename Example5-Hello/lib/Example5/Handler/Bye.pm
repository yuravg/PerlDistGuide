package Example5::Handler::Bye;

use strict;
use warnings;

# VERSION   <- Allows Dist::Zilla to inject the version

sub new { bless {}, shift }

sub message { "Goodbye" }

1;

__END__

=head1 NAME

Example5::Handler::Bye - Returns a "Goodbye" message
