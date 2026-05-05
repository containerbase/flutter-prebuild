

FROM ghcr.io/containerbase/base:14.9.6@sha256:fe182d00917eaea1c7ad7baabd603a6fd8ae22f5615dcfb3756ffde08dc2335d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
