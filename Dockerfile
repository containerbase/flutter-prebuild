

FROM ghcr.io/containerbase/base:13.23.3@sha256:14f2bd0df5cc37c1a0f2c494cb81ead002b48805a358c6b9964eda6e5ed9c367


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
