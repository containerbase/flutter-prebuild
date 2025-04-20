

FROM ghcr.io/containerbase/base:13.8.14@sha256:ff57d05ee75a288878b9be45e9d27d478b2a14ed485ca96b359339e8bd9001c8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
