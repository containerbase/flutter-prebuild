

FROM ghcr.io/containerbase/base:13.23.14@sha256:ec94be5ba18aaba54c767ad4305c6e4070ee09027f9efe5e8429fe12028120f4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
