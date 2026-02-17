

FROM ghcr.io/containerbase/base:14.4.1@sha256:ad9200aa09ce663f808d80b634e80aa4c563ec0d9955464d453f83c8b7a3311e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
