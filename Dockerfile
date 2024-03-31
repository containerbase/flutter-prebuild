

FROM ghcr.io/containerbase/base:10.3.9@sha256:f6984b7e337407853c27b36c0f2b955edeb41d0f5d94d60e33cea930b6a17225


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
