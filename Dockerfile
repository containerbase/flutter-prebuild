

FROM ghcr.io/containerbase/base:14.64.0@sha256:3c15a62b58c102aef3960a6f65bc97b269fa0f6981bbb119d4d1836cdfc3facc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
