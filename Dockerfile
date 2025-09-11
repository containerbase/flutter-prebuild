

FROM ghcr.io/containerbase/base:13.11.0@sha256:97fdde57ad63756836b5729417c4335709e6c49bd2b5831c392e07f17e3a966f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
