

FROM ghcr.io/containerbase/base:11.3.0@sha256:2b13285e228ab0a4015da45fac3b374795457870bdb8029702c582cb6ecba326


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
