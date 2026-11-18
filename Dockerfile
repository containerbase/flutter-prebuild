

FROM ghcr.io/containerbase/base:14.67.3@sha256:34e21254d1b62a5f5799f0bc11d89f152d9ce93adb79bb0fd5c82d32416e38b5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
