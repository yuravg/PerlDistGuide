# Example::Hello5

A Perl module with versioning and a script that prints messages based on arguments.

## Installation
1. Install Dist::Zilla and dependencies.
2. Run `dzil build`.
3. Run `dzil install`.

## Usage
Run the script:
```bash
example-hello5 hello      # Outputs: Hello World!!
example-hello5 bye        # Outputs: Goodbye!
example-hello5            # Outputs: How are you!
example-hello5 --version  # Shows version
```

## Testing
Run `dzil test --verbose`.
