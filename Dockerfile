

FROM ghcr.io/containerbase/base:13.8.15@sha256:45c70a981a75281403a932f0714b8c0b63e0eb9b115b2134e7af05b4e626de83


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
