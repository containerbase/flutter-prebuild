

FROM ghcr.io/containerbase/base:13.13.5@sha256:3bcd3379f0a72ffe21582f73342ab31d5adb4135427b00602294128b0957286a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
