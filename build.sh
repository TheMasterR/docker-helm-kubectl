docker build -t themasterr/docker-helm-kubectl:helm-3.11.1 .
docker tag themasterr/docker-helm-kubectl:helm-3.11.1 themasterr/docker-helm-kubectl:latest

docker push themasterr/docker-helm-kubectl:helm-3.11.1
docker push themasterr/docker-helm-kubectl:latest
