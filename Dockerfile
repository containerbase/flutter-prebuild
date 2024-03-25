

FROM ghcr.io/containerbase/base:10.3.8@sha256:e866d0138ebc94a12e6c770d947c44c83beb31db6a94105d7b1806670e71d78d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
