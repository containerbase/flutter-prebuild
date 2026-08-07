

FROM ghcr.io/containerbase/base:14.13.15@sha256:153abaca3bfc55207821624a8f17507b026e4fd532eee6707d3e30552ee29d10


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
