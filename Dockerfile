

FROM ghcr.io/containerbase/base:13.8.48@sha256:5a9fc85a657efb45bf77656a2ab641fa3b507dda62d2e648e5ade2d555ba4d23


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
