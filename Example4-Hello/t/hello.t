use Test::More;
use Test::Output;

stdout_is { system("bin/example4-hello hello") } "Hello World!!\n", 'hello arg';
stdout_is { system("bin/example4-hello bye") } "Goodbye!\n", 'bye arg';
stdout_is { system("bin/example4-hello") } "How are you!\n", 'no arg';

done_testing;
