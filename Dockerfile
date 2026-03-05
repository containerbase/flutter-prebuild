

FROM ghcr.io/containerbase/base:14.5.2@sha256:6c5e127dad612a84a175d2ca469afb76c4dd7a05ffe4a185f207f3a11f81b9f5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
