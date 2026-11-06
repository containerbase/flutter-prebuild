

FROM ghcr.io/containerbase/base:14.66.4@sha256:277771c67aa2a897241ff785a52c36b8f97227101e94e12682e2531c5de98e55


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
