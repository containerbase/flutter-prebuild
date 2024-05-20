

FROM ghcr.io/containerbase/base:10.6.13@sha256:f504822270555a05ff7ce1aaaa38159cd7f0700c7102bc59a7c19730e36a5459


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
