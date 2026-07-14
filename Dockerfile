

FROM ghcr.io/containerbase/base:14.13.0@sha256:62288195ccbeeedea2ae89327ec69ff37b02dee483c4bb822be164e76413f219


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
