

FROM ghcr.io/containerbase/base:11.6.2@sha256:285ea3019ed97bab5669753b7354ad4cd0a78be2f7e3d96fe24712dd12d85dfe


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
