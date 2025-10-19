

FROM ghcr.io/containerbase/base:13.23.5@sha256:281c8e901db51dc075abab84cccade455e12fe352aba315aecb32cd8ff1521c6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
