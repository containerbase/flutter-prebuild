

FROM ghcr.io/containerbase/base:14.13.12@sha256:3d30cd7ec586567f9ed4b98570b485c9ddfe1e60019f0ab6cdf451677d1ca42b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
