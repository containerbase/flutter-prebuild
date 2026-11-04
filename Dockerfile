

FROM ghcr.io/containerbase/base:14.66.0@sha256:0a32a3270baed78362c019694463bafcdae8cb84d8069901f832e274bdb29ddf


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
