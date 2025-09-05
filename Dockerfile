

FROM ghcr.io/containerbase/base:13.10.17@sha256:1f397343fa27236019c56b7bddeeef3d69adfd737b2085522920a7d5b3b63652


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
