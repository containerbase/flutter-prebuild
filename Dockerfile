

FROM ghcr.io/containerbase/base:10.3.19@sha256:b7239f4e3e1f3266507048af2d75674d917ada2853365faf2ffe999a094fd999


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
