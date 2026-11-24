

FROM ghcr.io/containerbase/base:14.69.0@sha256:b48f6446f4cabd3e2f9b13a96330ad332811d3aa0053e9ab4d568f7e7d2f37fb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
