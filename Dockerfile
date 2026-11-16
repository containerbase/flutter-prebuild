

FROM ghcr.io/containerbase/base:14.66.26@sha256:1e24ab869d0125592ed086e5a610f2be80f8a59262240d0498b08e6efc93117f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
