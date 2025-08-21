

FROM ghcr.io/containerbase/base:13.10.8@sha256:1a46c3947e796fbd1d93e93b15fe6d653d43cc60587182f333a69a0e76ae1fcc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
