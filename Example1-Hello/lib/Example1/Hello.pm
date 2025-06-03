package Example1::Hello;
use strict;
use warnings;

# Subroutine to return the message
sub hello {
    return "Hello World!";
}

1;

__END__

=head1 NAME

Example1::Hello - Prints a "Hello World!" message

=head1 SYNOPSIS

    use Example1::Hello;
    print Example1::Hello::hello();

=head1 DESCRIPTION

A simple module that returns a greeting.
