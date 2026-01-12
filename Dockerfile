

FROM ghcr.io/containerbase/base:13.25.24@sha256:1943eff8ba2978f7d12d259c89d3c404027a4de407817c9a100e4f6c19ba74ff


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
