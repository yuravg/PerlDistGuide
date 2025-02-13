package Example::Hello;
use strict;
use warnings;

# Subroutine to return the message
sub hello {
    return "Hello World!";
}

1;

__END__

=head1 NAME

Example::Hello - Prints a "Hello World!" message

=head1 SYNOPSIS

    use Example::Hello;
    print Example::Hello::hello();

=head1 DESCRIPTION

A simple module that returns a greeting.
