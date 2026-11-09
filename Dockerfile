

FROM ghcr.io/containerbase/base:14.66.13@sha256:9b35077026ff242869c08dfb536eda5efba70859692e052082ae5ec1dfdf4c6c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
