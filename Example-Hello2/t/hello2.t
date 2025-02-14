use Test::More;
use Test::Output;

stdout_is { system("bin/example-hello2 hello") } "Hello World!!\n", 'hello arg';
stdout_is { system("bin/example-hello2 bye") } "Goodbye!\n", 'bye arg';
stdout_is { system("bin/example-hello2") } "How are you!\n", 'no arg';

done_testing;
