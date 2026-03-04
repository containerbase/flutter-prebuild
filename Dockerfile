

FROM ghcr.io/containerbase/base:14.5.1@sha256:136421887c0c1b2667270da7c71a1bb4d18d76cab849de27a760a95369825324


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
