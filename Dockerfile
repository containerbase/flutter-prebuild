

FROM ghcr.io/containerbase/base:14.68.3@sha256:17fce5cf4bfeacbaaa4476409b407899679663b929c7d1c9cf6bbda8b72a8138


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
