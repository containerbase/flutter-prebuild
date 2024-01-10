

FROM ghcr.io/containerbase/base:9.31.4@sha256:8c51009cd18ea0e5c61fb60e87617f111a5c9fb9bb0570bb7880df93eba5fd43


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
