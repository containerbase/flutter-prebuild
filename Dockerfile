

FROM ghcr.io/containerbase/base:10.6.9@sha256:f7dd659c07e2f733f442f66f78bec2192c42a8ff85db58b8ee249aa1d8e3a5d8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
