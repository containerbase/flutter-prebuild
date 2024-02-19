

FROM ghcr.io/containerbase/base:10.1.1@sha256:cdbf93e77063f821855b86ed138070435dfda5aed05b3cf1048e9ba705592a7c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
