

FROM ghcr.io/containerbase/base:10.11.3@sha256:5fa9d9e1b9656c75d5f87f41f4e9cad55068e407c21509de5c32b27338b7edf3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
