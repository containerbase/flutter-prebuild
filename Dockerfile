

FROM ghcr.io/containerbase/base:13.0.27@sha256:e8feebba3e0017b0b92c93af091138480427f512929731a96875c6b024d275ec


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
