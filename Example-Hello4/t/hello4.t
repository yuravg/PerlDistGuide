use Test::More;
use Test::Output;

stdout_is { system("bin/example-hello4 hello") } "Hello World!!\n", 'hello arg';
stdout_is { system("bin/example-hello4 bye") } "Goodbye!\n", 'bye arg';
stdout_is { system("bin/example-hello4") } "How are you!\n", 'no arg';

done_testing;
