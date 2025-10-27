

FROM ghcr.io/containerbase/base:13.23.11@sha256:6ab6a08763ab0539e85e33fc4684235d98d8cd958ab5cd1b90e41ad9b76d6a44


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
