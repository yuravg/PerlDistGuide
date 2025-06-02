use Test::More;
use Example::Handler::Hello;
use Example::Handler::Bye;
use Example::Handler::HowAreYou;

my $hello = Example::Handler::Hello->new;
is($hello->message, 'Hello World!', 'Hello message works');

my $bye = Example::Handler::Bye->new;
is($bye->message, 'Goodbye', 'Bye message works');

my $default = Example::Handler::HowAreYou->new;
is($default->message, 'How are you', 'Default message works');

done_testing;
