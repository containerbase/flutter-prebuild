

FROM ghcr.io/containerbase/base:13.25.13@sha256:d97321d342ba6318ae4e6700c6100e2bd6a8afc7aea2d93a35aa6166fa5a6438


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
