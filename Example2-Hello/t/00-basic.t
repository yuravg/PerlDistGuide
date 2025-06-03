use Test::More;
use Example2::Hello;
use Example2::Bye;
use Example2::HowAreYou;

my $hello = Example2::Hello->new;
is($hello->message, 'Hello World!', 'Hello message works');

my $bye = Example2::Bye->new;
is($bye->message, 'Goodbye', 'Bye message works');

my $default = Example2::HowAreYou->new;
is($default->message, 'How are you', 'Default message works');

done_testing;
