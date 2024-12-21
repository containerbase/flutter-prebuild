

FROM ghcr.io/containerbase/base:13.5.0@sha256:0e0097dfbea18139095978abd79aa842a3abbce0ba8b7d0cf14651b9094979ec


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
