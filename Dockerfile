

FROM ghcr.io/containerbase/base:14.38.0@sha256:996d6e23c0eb3f712d127543d73fef84f1dd7997b9f57b929f29c421a3c19e1e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
