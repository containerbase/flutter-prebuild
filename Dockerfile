

FROM ghcr.io/containerbase/base:13.7.13@sha256:7b40f4ace6bc97653a2063a6363449090aa47c50a669201c14370cf77dceac9c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
