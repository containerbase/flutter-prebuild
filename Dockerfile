

FROM ghcr.io/containerbase/base:9.23.0@sha256:2dab1eb006d51d34528c4e5b059b64cea1962c60d33ead97ad65219625b464a7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
