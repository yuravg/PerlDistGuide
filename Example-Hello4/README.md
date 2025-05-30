# Example::Hello4

A Perl module with versioning and a script that prints messages based on arguments.

## Installation
1. Install Dist::Zilla and dependencies.
2. Run `dzil build`.
3. Run `dzil install`.

## Usage
Run the script:
```bash
example-hello4 hello      # Outputs: Hello World!!
example-hello4 bye        # Outputs: Goodbye!
example-hello4            # Outputs: How are you!
example-hello4 --version  # Shows version
```

## Testing
Run `dzil test --verbose`.
