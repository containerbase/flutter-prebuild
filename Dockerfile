

FROM ghcr.io/containerbase/base:10.8.1@sha256:ef7a1fdc7848c1a650d331359431ae82c87d17adb55f31677ecee4780f4a9bec


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
