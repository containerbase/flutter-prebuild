

FROM ghcr.io/containerbase/base:14.66.27@sha256:5e8fee2869581cd2d227002246f04109ac70aab3562235cc4d2b4eab4f3f48c8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
