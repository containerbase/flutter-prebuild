

FROM ghcr.io/containerbase/base:13.25.20@sha256:c5e6329f3495c5921d6ca9c0888cd5aa334ef6c7b92cacf994bfc0bfb2ecefb0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
