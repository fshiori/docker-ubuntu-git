FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    git \
    zstd \
    docker.io \
    curl \
    && rm -rf /var/lib/apt/lists/* \
    && curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash \
    && mv ./kustomize /usr/local/bin/ \
    && kustomize version