

FROM ghcr.io/containerbase/base:14.13.16@sha256:9543fd8aaa71df9cc386517ccd6188b65ba67b7ee249461b224142639f80145c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
