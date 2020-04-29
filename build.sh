docker build -t themasterr/docker-helm-kubectl:helm-3.2.0 .
docker tag themasterr/docker-helm-kubectl:helm-3.2.0 themasterr/docker-helm-kubectl:latest

docker push themasterr/docker-helm-kubectl:helm-3.2.0
docker push themasterr/docker-helm-kubectl:latest
