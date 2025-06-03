use Test::More;
use Example4::Hello;
use Example4::Bye;
use Example4::HowAreYou;

my $hello = Example4::Hello->new;
is($hello->message, 'Hello World!', 'Hello message works');

my $bye = Example4::Bye->new;
is($bye->message, 'Goodbye', 'Bye message works');

my $default = Example4::HowAreYou->new;
is($default->message, 'How are you', 'Default message works');

done_testing;
