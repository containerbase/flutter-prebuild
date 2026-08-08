

FROM ghcr.io/containerbase/base:14.13.18@sha256:32bd7f74ca9e59db869f8f8fc5470c0da6f606b65031bafe7af12de33d80eb0a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
