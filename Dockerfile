

FROM ghcr.io/containerbase/base:14.66.10@sha256:495eef9b32c6c3c9141e4ef12779d12bd388489d2e20cabc467b867dc2c783b0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
