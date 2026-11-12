

FROM ghcr.io/containerbase/base:14.66.22@sha256:b12c9ed0fa275414886d65baaec56c892a917120d5d133e89719052419276d05


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
