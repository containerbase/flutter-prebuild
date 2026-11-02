

FROM ghcr.io/containerbase/base:14.60.0@sha256:270afb8aec22e3aa2837debb235a2d1b4d4adae63b8bd8a755e24bdc09b190c6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
