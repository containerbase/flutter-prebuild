

FROM ghcr.io/containerbase/base:13.25.0@sha256:bab915d39f1e410fc5371d7f69a80ba0561a47221e261c0ca77aa9e7beb04ae2


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
