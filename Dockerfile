

FROM ghcr.io/containerbase/base:13.13.8@sha256:954dc672875f4abe7f8f70bf0d35bc1f2e705eb3539969a27f51f7bbf75af64f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
