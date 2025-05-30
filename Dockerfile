

FROM ghcr.io/containerbase/base:13.8.36@sha256:e6a36fd4c7e9458b64e0b92f7c28c937aa4cb52598bb770034012c635a4de4e4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
