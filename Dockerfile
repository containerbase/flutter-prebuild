

FROM ghcr.io/containerbase/base:9.28.0@sha256:6273193cb55945e8d7a9154829497584558094cc9e11481fd48c41dfc8920325


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
