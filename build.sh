docker buildx build --push --platform linux/arm64,linux/amd64 --tag themasterr/docker-helm-kubectl:latest .

docker buildx build --push --platform linux/arm64,linux/amd64 --tag themasterr/docker-helm-kubectl:helm-3.11.1 .
