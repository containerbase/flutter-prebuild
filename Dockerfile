

FROM ghcr.io/containerbase/base:13.2.4@sha256:0ab5b37afe63a2a65ea47a2fd9cc7f0d95ae775d79459913538311acaf60f6e6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
