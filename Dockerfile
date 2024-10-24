

FROM ghcr.io/containerbase/base:13.0.0@sha256:aafc73427c3869d1cd0e927c80e9549afd75113c129a2c8ef6e4dd70047f9f1a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
