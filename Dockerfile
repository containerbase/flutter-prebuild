

FROM ghcr.io/containerbase/base:10.6.10@sha256:3232c9b346833d710b9e73419f4fe1c90dc00c2e501d866f9b045298bc3b6ade


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
