

FROM ghcr.io/containerbase/base:14.15.2@sha256:04525ed6b7e61f56e81948ff3079f2e48ca4a874c6d73369f0b5ad0cbe01dcd4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
