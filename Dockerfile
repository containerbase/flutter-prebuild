

FROM ghcr.io/containerbase/base:9.33.9@sha256:d404446d1f6a87d8c4369e47115ef701a9e35d653ce0b8f5c03b34778febcbc5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
