

FROM ghcr.io/containerbase/base:9.21.0@sha256:9d3b42635085228314be392094bdd1a18218036a61bea3a9c87002f48a2d6295


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
