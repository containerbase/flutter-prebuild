

FROM ghcr.io/containerbase/base:13.23.15@sha256:ff5ec3d319d6acb61f6915826230844064463dafe5882d3cf1d5028951686271


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
