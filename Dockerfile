

FROM ghcr.io/containerbase/base:13.26.0@sha256:29d66ab9759858677d8a830d4baa683b67557e23645a10d2a55768ea6ffb14f3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
