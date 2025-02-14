

FROM ghcr.io/containerbase/base:13.7.14@sha256:cb641361951a5b74ad4ae653d389f6a37cc04010f44886fee4e527779ec7f892


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
