

FROM ghcr.io/containerbase/base:13.0.8@sha256:ebc3d3599eb148de64b43b6e91eac8217e0f28f555985390ae60b765e779324c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
