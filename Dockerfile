

FROM ghcr.io/containerbase/base:12.0.7@sha256:f6dc1a4b29c4bef61fb33eea223a955d16be356cabce58ba86fad7709c50d817


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
