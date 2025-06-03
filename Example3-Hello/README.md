# Example3::Hello

A Perl module with versioning and a script that prints messages based on arguments.

## Installation
1. Install Dist::Zilla and dependencies.
2. Run `make build`.
3. Run `make install`.

## Usage
Run the script:
```bash
example3-hello hello      # Outputs: Hello World!!
example3-hello bye        # Outputs: Goodbye!
example3-hello            # Outputs: How are you!
example3-hello --version  # Shows version
```

## Testing
Run `make test`.

## Makefile Targets
- `make build`: Build the module.
- `make test`: Run tests.
- `make install`: Install the module.
- `make uninstall`: Uninstall the module.
