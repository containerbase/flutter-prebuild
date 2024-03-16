

FROM ghcr.io/containerbase/base:10.3.1@sha256:5009fc3f52760a6c618c024caca74f02e2b7cf19505be1a2fb357ba2229627aa


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
