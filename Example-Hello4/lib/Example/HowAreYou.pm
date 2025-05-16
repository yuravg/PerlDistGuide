package Example::HowAreYou;

use strict;
use warnings;

# VERSION   <- Allows Dist::Zilla to inject the version

sub new { bless {}, shift }

sub message { "How are you" }

1;

__END__

=head1 NAME

Example::HowAreYou - Returns default message
