

FROM ghcr.io/containerbase/base:14.59.4@sha256:88f18523902c357e23b9ec99996214e2aec1e79b49fb2fb0681819902f6b496a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
