

FROM ghcr.io/containerbase/base:14.66.3@sha256:6c50d1895463718c843fd5d8a9d24ac343159e9f64d56541add639b7147eb4bd


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
