

FROM ghcr.io/containerbase/base:13.13.3@sha256:925fa6770b93ac5d18306f086e6b08fd1e8e351c1384518c83ce087afec85ffa


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
