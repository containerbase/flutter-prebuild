

FROM ghcr.io/containerbase/base:14.5.0@sha256:a6b8380f8c17cf3b2cdadfc4c417fa4b368ab24223ae3e2f79e4f7110ce41575


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
