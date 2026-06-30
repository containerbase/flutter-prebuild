

FROM ghcr.io/containerbase/base:14.12.3@sha256:36cd44a81d82db066848d769fa94ea07ebfcf2c5a56ec59707907ea3c1ab38e9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
