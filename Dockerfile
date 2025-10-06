

FROM ghcr.io/containerbase/base:13.16.0@sha256:4321d65cfa5fcce381fb9c8af9ee829249d45277b08f27cee2b9e7a4d019ea1d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
