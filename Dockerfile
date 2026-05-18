

FROM ghcr.io/containerbase/base:14.10.15@sha256:3af20b5caefce17dd562c5f1bf213d2cec73379904b31d621bc045c97c7ac944


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
