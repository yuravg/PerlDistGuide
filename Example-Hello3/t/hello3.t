use Test::More;
use Test::Output;

stdout_is { system("bin/example-hello3 hello") } "Hello World!!\n", 'hello arg';
stdout_is { system("bin/example-hello3 bye") } "Goodbye!\n", 'bye arg';
stdout_is { system("bin/example-hello3") } "How are you!\n", 'no arg';

done_testing;
