

FROM ghcr.io/containerbase/base:9.33.1@sha256:e1edd49ae6bcc6c468600436eed78db6739624f6d892c2bf4c312d03fb732bf9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
