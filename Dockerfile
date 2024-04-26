

FROM ghcr.io/containerbase/base:10.5.0@sha256:b500587bd927a0284070bdf11884c8c4f1c2d51529e821222d5b41ff156f84b3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
