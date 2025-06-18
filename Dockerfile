

FROM ghcr.io/containerbase/base:13.8.42@sha256:6d25603bdcd5a179b78a5c9f22a812e5587a21ac365437b06aa87eccfc05c1da


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
