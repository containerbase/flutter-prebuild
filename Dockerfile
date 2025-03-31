

FROM ghcr.io/containerbase/base:13.8.9@sha256:41b3e7db52a4f638d0f6c9241844d55dcaac465eed951b6e44c72edddeab780b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
