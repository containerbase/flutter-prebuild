

FROM ghcr.io/containerbase/base:14.7.4@sha256:57468abc14e44f041fe64a5229f8d7d424906d79cd2922c0fdf448914265640d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
