

FROM ghcr.io/containerbase/base:14.66.11@sha256:69f66c1b55435fda3eec94c6e8ef58b4c5c7ceae53b5155c3d82c7f1270eccbb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
