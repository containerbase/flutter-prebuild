

FROM ghcr.io/containerbase/base:14.52.6@sha256:bbc6d790fec3f79f338d7dc63053167c01154129bcfa6e9419ab0684ff25465a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
