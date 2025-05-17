

FROM ghcr.io/containerbase/base:13.8.27@sha256:dd439ff198510680e3074bc47f2615ed21cc42932c57d38c160491bd0c62b28c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
