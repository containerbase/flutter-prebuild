

FROM ghcr.io/containerbase/base:14.13.17@sha256:12359075d2b4db7d0c1b62982345de6a4e9ad652fbd6a220ffa0cc346b79ead8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
