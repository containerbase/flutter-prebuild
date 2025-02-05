

FROM ghcr.io/containerbase/base:13.7.8@sha256:53a64e921c789bec807cd34a2568bc276b8f23038484de3278f785948db2d62a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
