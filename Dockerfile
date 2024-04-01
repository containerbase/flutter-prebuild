

FROM ghcr.io/containerbase/base:10.3.11@sha256:d22ed08f962c8adae5a146ca4c37a7711475f64af1da1f9af59f976b289ddecb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
