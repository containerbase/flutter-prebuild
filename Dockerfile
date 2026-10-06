

FROM ghcr.io/containerbase/base:14.27.0@sha256:dd2eeeb4d100636d21e815fcf95d9fd2a16e35373ff5bb607da289ad71302526


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
