

FROM ghcr.io/containerbase/base:14.66.21@sha256:c325d9c52815dce8b631ff0f0c66e558bbbf7c94aa9c3a606a2464de02075f92


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
