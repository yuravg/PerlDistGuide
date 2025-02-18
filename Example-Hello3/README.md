# Example::Hello3

A Perl package with versioning and a script that prints messages based on arguments.

## Installation
1. Install Dist::Zilla and dependencies.
2. Run `make build`.
3. Run `make install`.

## Usage
Run the script:
```bash
example-hello3 hello      # Outputs: Hello World!!
example-hello3 bye        # Outputs: Goodbye!
example-hello3            # Outputs: How are you!
example-hello3 --version  # Shows version
```

## Testing
Run `make test`.

## Makefile Targets
- `make build`: Build the package.
- `make test`: Run tests.
- `make install`: Install the package.
- `make uninstall`: Uninstall the package.
