

FROM ghcr.io/containerbase/base:14.66.20@sha256:3971d420e05e89ff94a4ff33fc91e44445717eadb5716e321d5ffd0ac2d68090


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
