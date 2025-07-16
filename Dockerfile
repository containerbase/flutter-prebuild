

FROM ghcr.io/containerbase/base:13.8.60@sha256:187b78bb8fb861460a651ff36ab3abdb3a0cc8d0b3f491ca413c6886a47c9499


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
