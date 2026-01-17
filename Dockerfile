

FROM ghcr.io/containerbase/base:13.26.4@sha256:f5f4a7010d9ab7045d5717d04168db411c453e0504fce8084590206d1dc3eabc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
