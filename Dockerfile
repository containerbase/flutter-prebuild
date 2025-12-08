

FROM ghcr.io/containerbase/base:13.25.10@sha256:a9c0fae09ce598aedf3a8105269ec74dad276e842ac1dba6b62e4ac4d7cb9e3f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
