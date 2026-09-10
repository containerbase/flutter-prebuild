

FROM ghcr.io/containerbase/base:14.14.7@sha256:2dfe25c3039349460d6cbb911b2fa55544973057185de94e9e56642449d613af


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
