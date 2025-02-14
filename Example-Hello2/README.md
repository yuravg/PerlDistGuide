# Example::Hello2

A Perl module with an executable script that prints different messages based on command-line
arguments.

## Installation
1. Install Dist::Zilla and dependencies.
2. Run `dzil build`.
3. Run `dzil install`.

## Usage
Run the script with an argument:
```bash
example-hello2 hello  # Outputs: Hello World!!
example-hello2 bye    # Outputs: Goodbye!
example-hello2        # Outputs: How are you!
```

## Testing
Run `dzil test` to execute tests.
