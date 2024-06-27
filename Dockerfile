

FROM ghcr.io/containerbase/base:10.12.0@sha256:e23e8635f58ec2f8d9f8176ab065f6563920c263828c17d27aa00199612f6cb3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
