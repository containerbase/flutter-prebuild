

FROM ghcr.io/containerbase/base:9.30.2@sha256:6b5db7e17cb682281117e70d80a2fffa073a45bf8cdbbe5b8c2ad9872ce0ef9f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
