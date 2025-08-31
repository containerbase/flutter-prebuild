

FROM ghcr.io/containerbase/base:13.10.12@sha256:cc06d4450a3ac0e0b4f559a9f75bd24b4559a6c36763966331f05b072dd4f845


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
