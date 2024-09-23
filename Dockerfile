

FROM ghcr.io/containerbase/base:11.11.23@sha256:6eaea919624c4987718ac5bc01f38f3fca1192453327ed52b0e85b5bfb724580


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
