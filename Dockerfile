

FROM ghcr.io/containerbase/base:14.49.0@sha256:0625f0ab0d72622f54faebccbbf1f1e5510d4a38fde36eef60a546715030fe0e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
