package Example3::Hello;

use strict;
use warnings;

# VERSION   <- Allows Dist::Zilla to inject the version

sub new { bless {}, shift }

sub message { "Hello World!" }

1;

__END__

=head1 NAME

Example3::Hello - Returns a "Hello World!" message

=head1 SYNOPSIS

  my $hello = Example3::Hello->new;
  print $hello->message;
