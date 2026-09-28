

FROM ghcr.io/containerbase/base:14.19.0@sha256:5c2c27977528d01ecb9b790202e2474f58764cdc814fab8ec076741262eb8a89


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
