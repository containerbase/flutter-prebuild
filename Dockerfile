

FROM ghcr.io/containerbase/base:10.7.1@sha256:d5ad0af6249b6e26911154495a6e0af2ac9a54e952c5db2af4c47d3f65800c66


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
