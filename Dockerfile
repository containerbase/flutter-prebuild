

FROM ghcr.io/containerbase/base:14.12.12@sha256:9b84f2ede8e84b55521a1d193b45a62fccdb6fc3f27495ad0d31ca3402438ba9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
