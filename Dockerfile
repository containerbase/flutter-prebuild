

FROM ghcr.io/containerbase/base:10.16.0@sha256:b039aa654299e4d6d17e1fe0f868a659b9aaf88adb08a2745279b48a3af8e268


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
