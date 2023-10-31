

FROM ghcr.io/containerbase/base:9.23.9@sha256:e89ee56efd1aa7f62bf22ed5468a3ad3c60a11ceb353c252db3019f59cb4ad45


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
