

FROM ghcr.io/containerbase/base:13.0.14@sha256:43d215d034e210dd70300f7c125d5b489adc4f37e8eda2ee94e9dfbed5c90146


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
