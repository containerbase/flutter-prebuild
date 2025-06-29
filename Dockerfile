

FROM ghcr.io/containerbase/base:13.8.46@sha256:2718850f952fff28ef8c4ce58416f1dd4fb42a4042020766d5d6ac6e24e61bda


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
