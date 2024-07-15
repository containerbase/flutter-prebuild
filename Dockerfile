

FROM ghcr.io/containerbase/base:10.15.5@sha256:c8d2b91d587cd209a4efec035ba81c0e25168a6417a7766da703ad63abe7ef7a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
