

FROM ghcr.io/containerbase/base:13.10.9@sha256:f14ec1b5d7e1c557069a3fd2d5302d173d914d66da35d70a13fedd5e3a68f821


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
