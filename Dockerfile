

FROM ghcr.io/containerbase/base:14.1.0@sha256:d66d8ebc1cb5ad0ca126436a6e670c6eff7fb25a5db2fef78683c349e515390e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
