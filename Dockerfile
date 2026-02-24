

FROM ghcr.io/containerbase/base:14.4.6@sha256:ac62885e476860e8c6c73217d7483a13740188fc5fdc7e684b57e29b0afc8580


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
