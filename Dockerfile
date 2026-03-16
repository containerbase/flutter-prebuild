

FROM ghcr.io/containerbase/base:14.6.2@sha256:d216397e0011edbeefa6a6e675b43c11308fc6be0623a77073397ef7d46f30e7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
