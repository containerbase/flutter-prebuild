

FROM ghcr.io/containerbase/base:14.14.3@sha256:9db6ea7c03bf2717f79233a32b44274861210bac0891b89fc7fc01777aae0b65


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
