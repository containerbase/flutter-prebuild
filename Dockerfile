

FROM ghcr.io/containerbase/base:14.43.0@sha256:4646fdf373f044ddb51d85c7b31839f62a0491495b7da75b7eed39da425ad917


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
