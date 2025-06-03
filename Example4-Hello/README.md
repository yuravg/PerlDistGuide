# Example4::Hello

A Perl module with versioning and a script that prints messages based on arguments.

## Installation
1. Install Dist::Zilla and dependencies.
2. Run `dzil build`.
3. Run `dzil install`.

## Usage
Run the script:
```bash
example4-hello hello      # Outputs: Hello World!!
example4-hello bye        # Outputs: Goodbye!
example4-hello            # Outputs: How are you!
example4-hello --version  # Shows version
```

## Testing
Run `dzil test --verbose`.
