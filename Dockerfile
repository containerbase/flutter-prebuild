

FROM ghcr.io/containerbase/base:10.3.15@sha256:9f70b4724102a6ebef8f25021e5d58c3fbf3fed26191c31cc6fc13e085afbb2b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
