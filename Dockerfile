

FROM ghcr.io/containerbase/base:14.55.0@sha256:d873d3a7943fea99e5f7b4d434e0ea9780bbaad508836c22016f5e499d85dd50


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
