

FROM ghcr.io/containerbase/base:11.11.25@sha256:5217b071d517ade0b0a8f9d38f2477baf34ecd0c15c2d96443cda414908ae039


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
