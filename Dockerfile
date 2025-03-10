

FROM ghcr.io/containerbase/base:13.8.5@sha256:e02b2262f2352c31453f1224023fefd068f2865b1a07dadbffb4e21138ef3dd6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
