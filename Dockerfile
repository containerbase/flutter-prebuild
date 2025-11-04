

FROM ghcr.io/containerbase/base:13.23.18@sha256:4b2273bdc681f027d7c325d68eaf0ef4177bc98270ba671a4861dcc950ee9b55


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
