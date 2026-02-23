

FROM ghcr.io/containerbase/base:14.4.5@sha256:b7ee52fbe096de7262adb48975602376d2607a08097f244181d93211abb6b20a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
