

FROM ghcr.io/containerbase/base:11.11.12@sha256:42469cfb8f6d7fd2fe49a56b7361a3b74c74ee4e261983068cc0ffa33e6fdf48


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
