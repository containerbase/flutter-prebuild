

FROM ghcr.io/containerbase/base:13.10.19@sha256:b682e95b1929cf37678c4f70483e3788179f306ee1480518ce0c9dc37aee1a0a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
