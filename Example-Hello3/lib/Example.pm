package Example;

use strict;
use warnings;

# VERSION  <- Automatically replaced by [OurPkgVersion]

# sub version {
#     return $VERSION;
# }

sub version {
    my $git_info = `git rev-parse --short HEAD 2>/dev/null` || 'unknown';
    chomp $git_info;
    return "$VERSION (commit $git_info)";
}

1;

__END__

=head1 NAME

Example::version - Returns script version
