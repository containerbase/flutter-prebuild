

FROM ghcr.io/containerbase/base:9.23.4@sha256:e8869f1ad144504ccfb2ad625c6948aa4b44049ec7043c3ce66109e099a0c5d8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
