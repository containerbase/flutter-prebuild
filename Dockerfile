

FROM ghcr.io/containerbase/base:14.0.11@sha256:659d6b527e901c143e0787c78d2faa102b611bb27788acaf063cc427e400d3fe


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
