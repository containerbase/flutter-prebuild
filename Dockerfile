

FROM ghcr.io/containerbase/base:9.33.4@sha256:6871a164ce812be2bfb559cec08dadbfa409391f793d7bdbce6692fa787d6214


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
