

FROM ghcr.io/containerbase/base:14.10.0@sha256:9fa84f192de2245fa4e7afaf0188dd4a63b7ec8c02d10604afbf2216c43f0e63


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
