

FROM ghcr.io/containerbase/base:14.6.10@sha256:2894656e603a20d3ad70e3f167b47b1b6b5b6b8df6c63aec6023790a6a5a779b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
