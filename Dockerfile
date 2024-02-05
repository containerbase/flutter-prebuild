

FROM ghcr.io/containerbase/base:9.33.3@sha256:de45e608beb551797a70f3daeae4229a26160fa608ff55d26276c41c27f54bd8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
