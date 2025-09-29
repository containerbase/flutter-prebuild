

FROM ghcr.io/containerbase/base:13.14.3@sha256:bf2c595e88888228e8410acc76001184cd729db25428524c9306c120693f73c0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
