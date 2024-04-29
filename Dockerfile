

FROM ghcr.io/containerbase/base:10.5.1@sha256:f8312bb7daa53d6a6c825af1dc753a772060a6053c078e0c4164382858476ae3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
