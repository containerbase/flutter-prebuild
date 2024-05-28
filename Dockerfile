

FROM ghcr.io/containerbase/base:10.6.17@sha256:bfd489d2f3804862734bd37eb2cb77f55a4dff7d7473f3f76ce36259e8fffba8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
