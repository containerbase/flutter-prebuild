

FROM ghcr.io/containerbase/base:13.0.19@sha256:fa8324235801784d83c19b3caafa5aabff9e2a74894123dc1b3617a97d9fe521


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
