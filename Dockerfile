FROM alpine:3.10

# Metadata
LABEL org.label-schema.name="docker-helm-kubectl" \
      org.label-schema.url="https://cloud.docker.com/r/themasterr/docker-helm-kubectl/" \
      org.label-schema.vcs-url="https://github.com/themasterr/docker-helm-kubectl"

# Note: Latest version of kubectl may be found at:
# https://github.com/kubernetes/kubernetes/releases
ENV KUBE_LATEST_VERSION="v1.16.2"

# Note: Latest version of helm may be found at:
# https://github.com/kubernetes/helm/releases
ENV HELM_VERSION="v2.16.0"

RUN apk add --no-cache ca-certificates bash git openssh curl docker nodejs npm \
    && wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && wget -q https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
    && chmod +x /usr/local/bin/helm

WORKDIR /config

CMD bash
