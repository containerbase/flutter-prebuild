

FROM ghcr.io/containerbase/base:14.48.0@sha256:80c15165ed1c17cb8ad3a2ab91321d4b75997724e2820d4486ffa1dc9deadb2f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
