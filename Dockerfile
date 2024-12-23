

FROM ghcr.io/containerbase/base:13.5.1@sha256:e8fea1e637f37076c46d0ead3754b208dd3a5726d613d03c19c8f5997a05c4cf


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
