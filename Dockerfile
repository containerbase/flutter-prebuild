

FROM ghcr.io/containerbase/base:14.6.8@sha256:cf0ea7ce7068b19d2bf9addab60181f4791d932379393f6a92cb3e0ea7953800


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
