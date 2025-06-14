FROM mcr.microsoft.com/devcontainers/base:alpine-3.21

RUN apk update
RUN apk add --no-cache \
        postgresql17-client \
        openjdk21

CMD sh -c "uname -a && psql --version"
