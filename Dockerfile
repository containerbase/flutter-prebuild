

FROM ghcr.io/containerbase/base:13.8.33@sha256:42b15981c30c8839cac4be2bcbfc61f479d4fc9e7686f1297341ad55ba10e3fc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
