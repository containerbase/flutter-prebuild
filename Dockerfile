

FROM ghcr.io/containerbase/base:10.11.0@sha256:3a7070ef99fb98145b87b8a610a172afbb7526708cd1a2990c4ea0f12caa1b83


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
