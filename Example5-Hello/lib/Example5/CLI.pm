package Example5::CLI;

use strict;
use warnings;

use File::Basename qw(basename);

use Example5::Handler::Hello;
use Example5::Handler::Bye;
use Example5::Handler::HowAreYou;

# VERSION   <- Allows Dist::Zilla to inject the version

# ABSTRACT: CLI, help

use Getopt::Long qw(GetOptions);

sub new {
    my $class = shift;
    return bless {}, $class;
}

sub run {
    my ($self, @args) = @_;

    my $script_name = basename($0);

    my %opts = (
        hello => 'Example5::Handler::Hello',
        bye   => 'Example5::Handler::Bye',
        how   => 'Example5::Handler::HowAreYou',
       );

    my ($help, $version);
    GetOptions(
        'h|help'    => \$help,
        'v|version' => \$version,
       );

    if ($version) {
        my $git_info = `git rev-parse --short HEAD 2>/dev/null` || 'unknown';
        chomp $git_info;
        return "$VERSION (commit $git_info)";
        exit 0;
    }

    if ($help) {
        $self->show_help();
        exit 0;
    }

    # Get action from command-line argument
    my $action = shift @ARGV || 'how';
    my $class  = $opts{$action} // 'Example5::Handler::HowAreYou';

    # Run the selected action
    my $obj = $class->new;
    print $obj->message . "!\n";
}

sub show_help {
    print <<"HELP";
Usage: $0 [options] [hello|bye|how]

Options:
  -h, --help      Show this help message
  -v, --version   Display the script version

Commands:
  hello           Say hello
  bye             Say goodbye
  how             Ask how are you (default)
HELP
}

1;
