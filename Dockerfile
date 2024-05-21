

FROM ghcr.io/containerbase/base:10.6.14@sha256:b6002ebc28117d34b49322955d2cff49745363012d36930ab739f3ec7575947a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
