

FROM ghcr.io/containerbase/base:14.56.0@sha256:77cfffb2493ea9a8a3488fe434209c725f4c3f239e4e4e2098f2a9840cd52f89


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
