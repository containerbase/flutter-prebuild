

FROM ghcr.io/containerbase/base:14.59.6@sha256:761ec450969e6726b13ddd1b35cd2bec3d4e9b629dddd38a31c5096553a39694


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
