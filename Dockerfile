

FROM ghcr.io/containerbase/base:13.14.2@sha256:128526614629028ce06a3383e96a9a4ed78f32008886ade364e5d552cd23eb02


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
