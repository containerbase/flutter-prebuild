

FROM ghcr.io/containerbase/base:13.8.19@sha256:9281238e473eac08507992ad297d02fc597c42a9db9aec800a5088772efcae69


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
