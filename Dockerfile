

FROM ghcr.io/containerbase/base:13.25.18@sha256:e7d65b5273c4c8298911d6d87d53151912317b1b0494d40bac88641f8ced0138


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
