

FROM ghcr.io/containerbase/base:14.2.0@sha256:b8e896263e35c2ccd126b5d22db192cbcdd72e7dbb1252bfad6652a8ba7e9d1e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
