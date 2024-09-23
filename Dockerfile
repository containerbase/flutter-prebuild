

FROM ghcr.io/containerbase/base:11.11.24@sha256:56cb52f2c3d4759dbc4143bc3e7233f7d5fc8cca627e90168d6c06e2d745a559


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
