

FROM ghcr.io/containerbase/base:14.39.0@sha256:5da5c8171b5a074c0b4fb286481b74a3ca6631fa2dbca179c59d86947f2c5627


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
