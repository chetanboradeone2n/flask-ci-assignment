.PHONY: build lint test docker-login docker-build docker-push

build:
	pip install --no-cache-dir -r requirements.txt

lint:
	flake8 app.py

test:
	pytest tests/

