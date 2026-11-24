

FROM ghcr.io/containerbase/base:14.69.2@sha256:d10f99641966f436e86608ae43a5da0c3143d962f219d66a9f494cb893e1c285


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
