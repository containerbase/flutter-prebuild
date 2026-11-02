

FROM ghcr.io/containerbase/base:14.61.0@sha256:f7aab6a33cf36affdbeed71ae3c4248c48af562b2fa8c12474748899bf5cd93d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
