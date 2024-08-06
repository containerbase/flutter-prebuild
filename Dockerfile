

FROM ghcr.io/containerbase/base:11.6.7@sha256:97e5df4bd894c29a69d91ffdd91c1770193b173f81bd28fb6fe967d13bf54a60


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
