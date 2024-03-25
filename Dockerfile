

FROM ghcr.io/containerbase/base:10.3.6@sha256:9d8701a32de0b87318e9485d52c540f4f7ce02a6d7363a72088664c57bf7e546


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
