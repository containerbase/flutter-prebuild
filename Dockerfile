

FROM ghcr.io/containerbase/base:13.25.14@sha256:06b5c96f4c57ff6588591624d1af3f942373d6de03a83dc7fb83cce16627a15b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
