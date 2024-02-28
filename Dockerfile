

FROM ghcr.io/containerbase/base:10.2.1@sha256:3173ed233efca8e9cd23da1247e0fefa4430424e5092cba9fc386c859e96cb2a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
