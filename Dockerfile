

FROM ghcr.io/containerbase/base:14.18.4@sha256:85d43953eb99700669dab0b3057b6359f105e1a34840ea5af369d1007f46e275


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
