# Example2::Hello

A Perl module with an executable script that prints different messages based on command-line
arguments.

## Installation
1. Install Dist::Zilla and dependencies.
2. Run `dzil build`.
3. Run `dzil install`.

## Usage
Run the script with an argument:
```bash
example2-hello hello  # Outputs: Hello World!!
example2-hello bye    # Outputs: Goodbye!
example2-hello        # Outputs: How are you!
```

## Testing
Run `dzil test` to execute tests.
