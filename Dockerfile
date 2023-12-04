

FROM ghcr.io/containerbase/base:9.27.0@sha256:3b7f1a59408a047977b55fe08fd44c89b36b5f4ccbe04aaf38d9ff1a2f835bcf


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
