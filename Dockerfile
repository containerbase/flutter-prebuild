

FROM ghcr.io/containerbase/base:9.23.2@sha256:a890383584589afa9daf340d61efaea6d3086747e188594510de1c8d8eae464e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
