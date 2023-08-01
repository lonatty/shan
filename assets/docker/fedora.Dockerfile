FROM fedora:latest

RUN dnf update -y && \
    dnf install -y bzip2 git gnupg golang

COPY assets/docker/entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
