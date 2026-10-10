

FROM ghcr.io/containerbase/base:14.31.1@sha256:856053a1c88370f9ccd3d96819d5c999d7fccc612a4c7748b7e3462c9d13d398


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
