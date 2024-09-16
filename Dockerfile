

FROM ghcr.io/containerbase/base:11.11.17@sha256:2d4acc13b697a6345b6cd53e263f10c3ad6ebd1c7d63fcf13513d93590857aaa


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
