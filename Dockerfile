

FROM ghcr.io/containerbase/base:14.45.0@sha256:ac2098a5cd2dc119c95be5b80df50083754ef5580d916c2a6fbef26585b8f465


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
