

FROM ghcr.io/containerbase/base:11.9.1@sha256:abc869b6fd4bffbf0ccd107ffc73078bd3e6aeb2ff08858424cdd5810ee920e6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
