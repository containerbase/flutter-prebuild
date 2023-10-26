

FROM ghcr.io/containerbase/base:9.23.7@sha256:7f48bd13d463909affcf65769692f39f307e3bd4865b24daa87362ea95be9be8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
