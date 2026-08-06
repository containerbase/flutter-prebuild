

FROM ghcr.io/containerbase/base:14.13.14@sha256:24d6b4d809993a73542c9187e858eaa1979ab252e77ea42d32286e592192ba39


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
