

FROM ghcr.io/containerbase/base:10.6.19@sha256:d943d4941e043013f0efdb90324f12db3ad4abcb417da45d16ccb9e55172af9b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
