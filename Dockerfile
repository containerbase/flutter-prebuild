

FROM ghcr.io/containerbase/base:14.66.19@sha256:d158862ea11c78bcd235760cb54c2d23ceea9d580a06b771b87b93dd84b004de


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
