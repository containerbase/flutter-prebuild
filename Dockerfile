

FROM ghcr.io/containerbase/base:9.32.2@sha256:811216121107ca6173ae10eb52b25bce064da108204aada7c2d1b86dbcc3f477


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
