

FROM ghcr.io/containerbase/base:13.26.1@sha256:71936bd211d95d4754a247d4fdb29405a7fc9a930b8772a829a3fa82a26c8bbb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
