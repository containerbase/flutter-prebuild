

FROM ghcr.io/containerbase/base:13.9.0@sha256:9666d79615bf7a6ef26a37c2a26b8065edb33a524c78d75955c93b907b8237c7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
