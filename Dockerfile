

FROM ghcr.io/containerbase/base:11.6.4@sha256:beb7dc135a2cfb4702e6aaa955a5689a10063432400729b76a17cda7500dd021


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
