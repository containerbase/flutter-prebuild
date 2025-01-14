

FROM ghcr.io/containerbase/base:13.5.9@sha256:87c0eaa24464d87d7f2680bd923ee4f3c1c83e7cf9543f7ba004490bb1f39d09


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
