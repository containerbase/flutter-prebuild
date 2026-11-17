

FROM ghcr.io/containerbase/base:14.67.1@sha256:d79112e1d427f4e9c57aca6b29ebab6f09cfb804059a167729459411218579d8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
