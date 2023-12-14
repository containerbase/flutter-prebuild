

FROM ghcr.io/containerbase/base:9.30.4@sha256:6483f596589d37c7c305ea0b3d93a6762d6255cd9b19d4b1aa62b4f461ea4364


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
