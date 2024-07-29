

FROM ghcr.io/containerbase/base:11.2.0@sha256:62b0670c37a2b00c8bd7a9d55c956a40c95a18bc946ec5b6aed3b43f9aba4d71


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
