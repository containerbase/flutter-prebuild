

FROM ghcr.io/containerbase/base:10.11.6@sha256:227eededf755714cd9e98c9dda94f292f9c6fa81994dbd49fe5a8851d08fba70


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
