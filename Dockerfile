

FROM ghcr.io/containerbase/base:14.44.4@sha256:7e06c4150034a066173d2976866fc193f8cc171006bd399ab82aa52d04640cc1


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
