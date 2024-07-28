

FROM ghcr.io/containerbase/base:11.1.5@sha256:f4b16983d7f46d5ecd205f0ff684dbd251a292b5fb2bc5ae9189baf00995bc9c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
