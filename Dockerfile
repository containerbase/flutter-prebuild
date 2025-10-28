

FROM ghcr.io/containerbase/base:13.23.13@sha256:1f7baea4b19866e05e62874308a39f1a485c4e46b59c7e3742ab7095dca135bc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
