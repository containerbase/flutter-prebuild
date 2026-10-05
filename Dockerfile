

FROM ghcr.io/containerbase/base:14.25.0@sha256:1590091a3e73a1390c40351ac4442078fe591981957713f70fe45c6bbdee1c1d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
