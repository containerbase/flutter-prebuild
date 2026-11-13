

FROM ghcr.io/containerbase/base:14.66.23@sha256:0af58d0e9f38d3206f8c255b8e0dccc63da0e57474ee251f99e4c07b66d63737


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
