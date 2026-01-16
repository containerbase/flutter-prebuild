

FROM ghcr.io/containerbase/base:13.26.3@sha256:215fa907c2240e4f43911b0a2519db36ab54ce8807d171b8b629de6268e8090d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
