# Example5::Hello

A Perl module with versioning and a script that prints messages based on arguments.

## Installation
1. Install Dist::Zilla and dependencies.
2. Run `dzil build`.
3. Run `dzil install`.

## Usage
Run the script:
```bash
example5-hello hello      # Outputs: Hello World!!
example5-hello bye        # Outputs: Goodbye!
example5-hello            # Outputs: How are you!
example5-hello --version  # Shows version
```

## Testing
Run `dzil test --verbose`.
