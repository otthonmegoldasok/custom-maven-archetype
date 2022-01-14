################################################################################
# Variables                                                                    #
################################################################################
# Commit Hash for CI build.
GIT_VERSION = $(shell git describe --always --abbrev=7 --dirty)

# It's necessary to set this because some environments don't link sh -> bash.
SHELL := /usr/bin/env bash

################################################################################
# Help                                                                         #
################################################################################
define PRINT_HELP_PYSCRIPT
import re, sys

print("Usage:  make COMMAND\n\nCommands:")

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("  %-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

################################################################################
# Target: help                                                                 #
################################################################################
.PHONY: help
help:  ## Print this help message and exit
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

################################################################################
# Target: build                                                                #
################################################################################
.PHONY: build
build: ## Compiled code and package
	mvn clean install
