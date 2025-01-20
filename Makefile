# Makefile for Rust project

# Variables
CARGO := cargo
PROJECT_NAME := rust_demo
SHELL := /bin/bash

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean: ## Clean the project using cargo
	$(CARGO) clean


build: ## Build the project suing cargo
	$(CARGO) build

lint: ## Lint the project using cargo
	@rustup component add clippy 2> /dev/null
	$(CARGO) clippy

run: ## Run the project using cargo
	$(CARGO) run


test: ## Test the project using cargo
	$(CARGO) test


format: ## Format the code
	@rustup component add rustfmt 2> /dev/null
	$(CARGO) fmt


check: ## Check for warnings and errors
	$(CARGO) check

bump: ## Bump the version number
	@echo "Current version is $(shell cargo pkgid | cut -d# -f2)"

