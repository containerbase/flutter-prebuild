

FROM ghcr.io/containerbase/base:13.6.0@sha256:6267974def5184599e5b41c8eb92c6f069b8631c05ce1caeb7312ca579d9669a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
