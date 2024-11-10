

FROM ghcr.io/containerbase/base:13.0.12@sha256:13ed2c3aff01073f365a8a71a9caa4a1a28e0e133773804687cbd073383453b0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
