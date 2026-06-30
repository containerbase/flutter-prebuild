

FROM ghcr.io/containerbase/base:14.12.4@sha256:119546549220b98ff653b8c822cc5c1f323151c86ef8dacf273bb53e128192b7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
