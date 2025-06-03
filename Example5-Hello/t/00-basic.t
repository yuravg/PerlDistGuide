use Test::More;
use Example5::Handler::Hello;
use Example5::Handler::Bye;
use Example5::Handler::HowAreYou;

my $hello = Example5::Handler::Hello->new;
is($hello->message, 'Hello World!', 'Hello message works');

my $bye = Example5::Handler::Bye->new;
is($bye->message, 'Goodbye', 'Bye message works');

my $default = Example5::Handler::HowAreYou->new;
is($default->message, 'How are you', 'Default message works');

done_testing;
