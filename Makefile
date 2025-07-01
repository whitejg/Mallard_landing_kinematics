.PHONY: help activate build-env clean install test

# Default target
help:
	@echo "Available commands:"
	@echo "  make activate   - Create and activate virtual environment"
	@echo "  make build-env  - Install dependencies from requirements.txt"
	@echo "  make install    - Create venv and install dependencies (activate + build-env)"
	@echo "  make clean      - Remove virtual environment"

# Create and activate virtual environment
activate:
	@if [ ! -d ".venv" ]; then \
		echo "Creating virtual environment..."; \
		python3 -m venv .venv; \
	fi
	@echo "Virtual environment ready. To activate manually, run:"
	@echo "source .venv/bin/activate"

# Install dependencies from requirements.txt
build-env: activate
	@echo "Installing dependencies..."
	@.venv/bin/pip install --upgrade pip
	@if [ -f "requirements.txt" ]; then \
		.venv/bin/pip install -r requirements.txt; \
	else \
		echo "Warning: requirements.txt not found"; \
	fi

# Complete setup: create venv and install dependencies
install: activate build-env
	@echo "Environment setup complete!"

# Clean up virtual environment
clean:
	@echo "Removing virtual environment..."
	@rm -rf .venv
