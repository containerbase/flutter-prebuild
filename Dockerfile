

FROM ghcr.io/containerbase/base:14.1.2@sha256:65dce0baea0cf2a6b96920677b39a49b1298c0319b6c44ce4d6e4694b838e80f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
