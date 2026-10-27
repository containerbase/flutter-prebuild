

FROM ghcr.io/containerbase/base:14.54.0@sha256:0e3e7727d516cbbe7ac2c95121f3e0d5898ab6eab46345747562dd7666c94733


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
