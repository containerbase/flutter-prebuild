

FROM ghcr.io/containerbase/base:14.4.4@sha256:0f4e46c22c90c27cd6f45599f73898a4eb485f6e8c8e9a2461f987fad235fd18


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
