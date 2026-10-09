

FROM ghcr.io/containerbase/base:14.30.2@sha256:3e2e08a3fdc75031d6566656ea5605030ca5e5c5dbafc776bc2c33f3a1d3c4e9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
