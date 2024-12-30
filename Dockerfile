

FROM ghcr.io/containerbase/base:13.5.6@sha256:64cad7a020da9e0fb6b3496fade83216714513dc42cd3128b6328c5d15d7c5a8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
