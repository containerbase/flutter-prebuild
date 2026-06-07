

FROM ghcr.io/containerbase/base:14.10.24@sha256:fcf2e943ff1a3371e29c1e7ad3b8b982da7c65f7b7e628e4b182b58549beefbe


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
