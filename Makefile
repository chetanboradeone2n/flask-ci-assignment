.PHONY: build lint test docker-login docker-build docker-push

build:
	python3 -m pip install --no-cache-dir -r requirements.txt

