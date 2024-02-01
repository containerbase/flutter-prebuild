

FROM ghcr.io/containerbase/base:9.32.1@sha256:26f9e37afc8213cb9a5b090384c6a583efdffe3d2474c85c3a4e692bbfa6618e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
