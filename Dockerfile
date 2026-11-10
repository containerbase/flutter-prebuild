

FROM ghcr.io/containerbase/base:14.66.15@sha256:d631f79acd0d39b3b5982afb620b3fc53d0be98fe91cb7302c1db05e977dd6f8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
