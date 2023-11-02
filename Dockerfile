

FROM ghcr.io/containerbase/base:9.23.10@sha256:500fe665605b6bcad30014bff345c56c6bdb1c148ae79d4ac56f84a9c046edfd


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
