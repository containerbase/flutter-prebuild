

FROM ghcr.io/containerbase/base:9.20.13@sha256:9d5c018646811190c6eae482ac7d8be90f3817378903f57b3fe6d9616e7fe8f4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
