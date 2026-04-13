

FROM ghcr.io/containerbase/base:14.6.20@sha256:d81e298a1d585c636ac609cbba6182537915b02545f60482f431d22e16609355


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
