

FROM ghcr.io/containerbase/base:13.2.2@sha256:81866a1af02458da34f20dca704ebfac1ad72232fb33a5683634522403883db9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
