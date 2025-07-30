.PHONY: build lint test docker-login docker-build docker-push

build:
	@echo "Skipping build for now"

lint:
	flake8 app.py || true  # Allow it to fail without stopping the workflow

test:
	@echo "Skipping tests for now"

docker-login:
	@echo "Skipping Docker login for now"

docker-build:
	@echo "Skipping Docker build for now"

docker-push:
	@echo "Skipping Docker push for now"

