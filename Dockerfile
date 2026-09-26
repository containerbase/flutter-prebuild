

FROM ghcr.io/containerbase/base:14.18.3@sha256:77758615621029aa4eda8e1797d459b4cbc64b1a92da71005635bd85a3405220


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
