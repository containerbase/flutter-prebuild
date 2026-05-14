

FROM ghcr.io/containerbase/base:14.10.12@sha256:8a2cf50fcacce46c3b8a78de1f2d8fe444e56ee8e4c9c4882895ef21370ed442


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
