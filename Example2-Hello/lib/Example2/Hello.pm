package Example2::Hello;

use strict;
use warnings;

sub new { bless {}, shift }

sub message { "Hello World!" }

1;

__END__

=head1 NAME

Example2::Hello - Returns a "Hello World!" message

=head1 SYNOPSIS

  my $hello = Example2::Hello->new;
  print $hello->message;
