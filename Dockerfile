

FROM ghcr.io/containerbase/base:10.10.3@sha256:2042006da341b8db281888833207e3acce3885a76bad015bc52be07900ffea74


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
