use Test::More;
use Example::Hello;
use Example::Bye;
use Example::HowAreYou;

my $hello = Example::Hello->new;
is($hello->message, 'Hello World!', 'Hello message works');

my $bye = Example::Bye->new;
is($bye->message, 'Goodbye', 'Bye message works');

my $default = Example::HowAreYou->new;
is($default->message, 'How are you', 'Default message works');

done_testing;
