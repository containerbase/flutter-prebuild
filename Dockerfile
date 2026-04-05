

FROM ghcr.io/containerbase/base:14.6.11@sha256:38798b60223c1bb258672f5ff5c6b3bceea37567b56824d214fe1b1e5018367d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
