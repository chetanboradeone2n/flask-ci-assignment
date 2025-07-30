.PHONY: build lint test docker-login docker-build docker-push

build:
    pip install --no-cache-dir -r requirements.txt

lint:
    flake8 app.py

test:
    pytest tests/

docker-login:
    echo "$$DOCKER_PASSWORD" | docker login -u "$$DOCKER_USERNAME" --password-stdin

docker-build:
    docker build -t $$DOCKER_USERNAME/myapp:latest .

docker-push:
    docker push $$DOCKER_USERNAME/myapp:latest
