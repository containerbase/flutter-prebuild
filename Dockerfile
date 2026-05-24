

FROM ghcr.io/containerbase/base:14.10.16@sha256:ba01c5085693d7cd31b473b56d3190ecbe8d626ef901c9ed515ee4b749f4a01f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
