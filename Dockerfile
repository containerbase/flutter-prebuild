

FROM ghcr.io/containerbase/base:10.3.3@sha256:2229a04d052999d2e46439dd735a7a64ac1b250f82148a2df9338054014dd289


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
