

FROM ghcr.io/containerbase/base:14.8.0@sha256:0242cedae39637f1cedf9a11ad713a35af16f2937cc44d647997353f7d9572a0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
