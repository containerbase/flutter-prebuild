

FROM ghcr.io/containerbase/base:14.11.3@sha256:4245b07f1986e97b92510e2ee0d09307f67cf921044a1e7e0e9ba1904b68298c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
