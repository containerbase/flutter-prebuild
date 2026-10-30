

FROM ghcr.io/containerbase/base:14.57.2@sha256:f08107bd7aa05d53d26385c2dcc1c053487b01c040874a446dc9c8750afe4879


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
