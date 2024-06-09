

FROM ghcr.io/containerbase/base:10.11.2@sha256:96d88c92cd58d250b444f94fa1797d22c2999378f941c27265463a4ebb68c690


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
