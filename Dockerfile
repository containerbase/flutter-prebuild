

FROM ghcr.io/containerbase/base:10.3.13@sha256:07057011001be8149ffc113f364d88a5b8e768a08562f73d9f65e4b72c56d105


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
