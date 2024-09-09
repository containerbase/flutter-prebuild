

FROM ghcr.io/containerbase/base:11.11.13@sha256:53c228aff88c9a821e44a1e52d7490daf90eded89a94772000c245e84301075c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
