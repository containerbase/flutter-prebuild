

FROM ghcr.io/containerbase/base:14.21.1@sha256:150b9ce5d54835ff80f01f6b0e451de5157ab6fda57c29cfd5c40e1ebd5f58d4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
