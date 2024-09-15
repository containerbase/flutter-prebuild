

FROM ghcr.io/containerbase/base:11.11.15@sha256:5b000c9e31ee4d55ceac1caaf5acd39617441fa35075fdd82bdd40b8c32a7ac7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
