# Makefile for managing a Perl package with Dist::Zilla

PACKAGE_NAME := $(shell perl -ne 'print $$1 if /^name\s*=\s*(\S+)/' dist.ini)
VERSION := $(shell perl -ne 'print $$1 if /^(?:first_)?version\s*=\s*(\S+)/' dist.ini)
DIST_TAR := $(PACKAGE_NAME)-$(VERSION).tar.gz
BUILD_DIR := $(PACKAGE_NAME)-$(VERSION)
SCRIPT_NAME := $(shell ls bin/* | head -n 1 | xargs basename)
SRC_FILES := $(wildcard lib/$(PACKAGE_NAME)/*.pm bin/* dist.ini)

.PHONY: all clean build test run install uninstall uninstall-force help

# Default target
help:
	@echo "Usage: make <target>"
	@echo ""
	@echo "Available targets:"
	@echo "  help            - Display this help message"
	@echo "  clean           - Remove all derived files"
	@echo "  build           - Build the package"
	@echo "  test            - Run tests"
	@echo "  run [args]      - Run the script from the built directory with optional args"
	@echo "  install         - Install the package"
	@echo "  uninstall       - Uninstall the package with pm-uninstall"
	@echo "  uninstall-force - Uninstall the package without dependency checks"

all: build

# Remove all derived files
clean:
	dzil clean
	rm -rf $(BUILD_DIR) *.tar.gz

# Build the package only if sources have changed
$(DIST_TAR): $(SRC_FILES)
	@echo "Building package..."
	dzil build

build: $(DIST_TAR)

# Extract the tarball for run and test targets
$(BUILD_DIR): $(DIST_TAR)
	@echo "Extracting package..."
	tar -xzf $(DIST_TAR)

# ANSI color codes
GREEN := $(shell tput setaf 2)
RED := $(shell tput setaf 1)
BOLD := $(shell tput bold)
NC := $(shell tput sgr0)

# Run tests only if needed
test: $(BUILD_DIR)
	@echo "$(BOLD)Running tests...$(NC)"
	@dzil test && echo "$(GREEN)✓ Tests passed!$(NC)" || echo "$(RED)✗ Tests failed!$(NC)"

# Run the script with optional arguments passed from the command line
run: $(BUILD_DIR)
	perl -I$(BUILD_DIR)/lib $(BUILD_DIR)/bin/$(SCRIPT_NAME) $(filter-out $@,$(MAKECMDGOALS))

# Catch-all target to prevent errors from extra arguments
%:
	@:

# Install the package (only rebuild if necessary)
install: $(DIST_TAR)
	dzil install

# Check if pm-uninstall is installed (subroutine-like)
CHECK_PM_UNINSTALL = @which pm-uninstall >/dev/null 2>&1 || \
	(echo "Error: pm-uninstall not found. Install App::pmuninstall (e.g., 'cpan App::pmuninstall')" && exit 1)

# Uninstall the package using pm-uninstall
uninstall:
	$(CHECK_PM_UNINSTALL)
	pm-uninstall $(PACKAGE_NAME)

# Uninstall the package forcibly without dependency checks
uninstall-force:
	$(CHECK_PM_UNINSTALL)
	pm-uninstall --no-checkdeps $(PACKAGE_NAME)
