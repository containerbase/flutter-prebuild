

FROM ghcr.io/containerbase/base:9.24.1@sha256:fb36bb5f67c7c70c5682c3f3e5bde7b13f6f9e482a0e4a231312fc60e3d7aa10


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
