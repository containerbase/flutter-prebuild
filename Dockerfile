

FROM ghcr.io/containerbase/base:11.9.0@sha256:3137d18444cb7d3ef0427046d6802a53d2b75c9327fa70a6461646935026e802


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
