

FROM ghcr.io/containerbase/base:10.6.3@sha256:0ecef01e73000552f75bf0b90340abb245da29aca378a2f6c07ca7b75a03f96e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
