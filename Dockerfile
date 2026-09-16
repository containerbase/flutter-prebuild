

FROM ghcr.io/containerbase/base:14.16.0@sha256:7d4d528eaa0b4bdb1e0b17e9920d164070d8c7767facd45d6cae3ef7ab608b83


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
