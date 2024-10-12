

FROM ghcr.io/containerbase/base:12.0.2@sha256:788939a46f861fb70060d7ec62574447c12e8eb2cf35c6e2314d43ad19208f61


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
