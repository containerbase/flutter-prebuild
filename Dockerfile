

FROM ghcr.io/containerbase/base:12.0.9@sha256:c8278c4075bb04c39d7651b5aab9c70071f292976e1b8552def4c67116bde2d4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
