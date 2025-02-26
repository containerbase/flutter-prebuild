

FROM ghcr.io/containerbase/base:13.8.2@sha256:e6aeaa7749e3668d00c9ebbf87de9b3b03bceb636cf22662690cb041cf931e02


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
