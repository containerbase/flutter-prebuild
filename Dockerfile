

FROM ghcr.io/containerbase/base:13.13.13@sha256:6cc24e0aa68eba203af1fea5448c24bc6a7248109b1b64964e116bc9aee1258a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
