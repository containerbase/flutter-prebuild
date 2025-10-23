

FROM ghcr.io/containerbase/base:13.23.9@sha256:8f0470a0c68b18fddf6e8c16d09c1f32bb709702c16f89f0ecbef1bad1197817


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
