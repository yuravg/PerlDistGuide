use Test::More;
use Test::Output;

# Test the script's output
stdout_is { system("bin/example-hello") } "Hello World!\n", "Script prints 'Hello World!'";

done_testing;
