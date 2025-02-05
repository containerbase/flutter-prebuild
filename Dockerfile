

FROM ghcr.io/containerbase/base:13.7.7@sha256:43c6259f72b0ab1ea0c03568549fe579bb8fc4c7e1d9f1d642d54119c014bb6c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
