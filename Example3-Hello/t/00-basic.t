use Test::More;
use Example3::Hello;
use Example3::Bye;
use Example3::HowAreYou;

my $hello = Example3::Hello->new;
is($hello->message, 'Hello World!', 'Hello message works');

my $bye = Example3::Bye->new;
is($bye->message, 'Goodbye', 'Bye message works');

my $default = Example3::HowAreYou->new;
is($default->message, 'How are you', 'Default message works');

done_testing;
